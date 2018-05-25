using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Dapper;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// AccessDB is used along with Repairs.cs to make connections / querys / updates to the database which holds user data collected by Reactive Repairs eForm.
/// </summary>
/// <returns>returns different data depending on which method is called.</returns>
static public class AccessDB
{
	static string _ConnectionString;
	static AccessDB()
	{
		_ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ebaseSQLConnection"].ConnectionString;
	}

	static public List<Leaver> getLeavers()
	{
		List<Leaver> result;

		string sSQL = @"SELECT [EMPLOYEE_EMPLOYEE_NUMBER]
						,[EMPLOYEE_FULL_NAME]
						,[EMPLOYEE_FIRST_NAME]
						,[EMPLOYEE_LAST_NAME]
						,[EMPLOYEE_JOB_TITLE]
						,[EMPLOYEE_DIRECTORATE]
						,[EMPLOYEE_DIVISION]
						,[EMPLOYEE_EMAIL_ADDRESS]
						,[EMPLOYEE_LOCATION]
						,[MANAGER_FIRST_NAME]
						,[MANAGER_FULL_NAME]
						,[MANAGER_JOB_TITLE]
						,[MANAGER_LAST_NAME]
						,[DATE_RL_UPDATED]
						,[LAST_DAY_OF_SERVICE]
						,[LAST_WORKING_DAY]
					FROM [ufs].[HR_E_LEAVER]";

		using (var conn = new SqlConnection(_ConnectionString))
		{
			try
			{
				conn.Open();
				result = conn.Query<Leaver>(sSQL).ToList();
			}
			catch (SqlException ex)
			{
				result = null;
			}
			catch (Exception ex)
			{
				result = null;
			}
		}

		return result;
	}

	static public bool userAccessInt(string username)
	{
		bool result;

		string sSQL = @"SELECT *
							FROM [EBS_EXT_LIVE_DATA].[dbo].[REACTIVE_REPAIRS_USERS]
							WHERE Username = '" + username + "'";

		using (var conn = new SqlConnection(_ConnectionString))
		{
			try
			{
				conn.Open();
				result = conn.Query<bool>(sSQL).FirstOrDefault();
			}
			catch (SqlException ex)
			{
				result = false;
			}
			catch (Exception ex)
			{
				result = false;
			}
		}
		return result;
	}
}