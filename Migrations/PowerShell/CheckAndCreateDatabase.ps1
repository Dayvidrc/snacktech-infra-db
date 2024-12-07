param(
    [Parameter(Mandatory = $true)]
    [string]$Instance,
    [Parameter(Mandatory = $true)]
    [int]$Port,
    [Parameter(Mandatory=$true)]
    [string]$DbName,
    [Parameter(Mandatory=$true)]
    [string]$UID,
    [Parameter(Mandatory=$true)]
    [string]$Password
)

# Connect to the SQL Server instance
$SqlConnection = New-Object System.Data.SqlClient.SqlConnection
$SqlConnection.ConnectionString = "Server=$Instance,$Port;Database=master;User ID=$UID;Password=$Password;"
$SqlConnection.Open()

# Check if the database exists
$cmd = New-Object System.Data.SqlClient.SqlCommand
$cmd.Connection = $SqlConnection
$cmd.CommandText = "SELECT db_id('$DbName')"
$reader = $cmd.ExecuteReader()

if (!$reader.Read()) {
    # Create the database
    $cmd.CommandText = "CREATE DATABASE $DbName"
    $cmd.ExecuteNonQuery()
}

$SqlConnection.Close()