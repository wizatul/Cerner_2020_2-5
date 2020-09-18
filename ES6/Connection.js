import oracledb from "oracledb";
/* Program 4 for cerner_2^5_2020*/
/* Node app to return pool of connections and close */
export default class Connection {
    constructor(authority) {
            this.authority = authority;
            this.poolConnection = null;
        }
        // cerner_2^5_2020
    async closeConnection(connection) {
        try {
            await connection.close();
        } catch (error) {
            return `Error::closeConnection: ${error}`;
        }
    }
    async createNewPool() {
        try {
            if (this.poolConnection) {
                return this.poolConnection;
            }
            const EnvConfig = { "domain": { "user": "process.env.NODE_ORACLEDB_USE", "password": "process.env.NODE_ORACLEDB_PASSWORD", "connectString": "process.env.NODE_ORACLEDB_CONNECTIONSTRING" } };
            if (!EnvConfig.user) {
                throw new Error("Authorisation faild");
            }
            this.poolConnection = await oracledb.createPool(EnvConfig);
            return this.poolConnection;
        } catch (error) {
            return (`Error::createNewPool: ${error}`);
        }
    }
}