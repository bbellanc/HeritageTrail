dataSource {
    pooled = true
    driverClassName = "org.h2.Driver"
    username = "sa"
    password = ""
//Below for prod
//    pooled = true
//    driverClassName = "com.mysql.jdbc.Driver"
//    dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory' // Hibernate 3
//    cache.region.factory_class = 'org.hibernate.cache.ehcache.EhCacheRegionFactory' // Hibernate 4
}

// environment specific settings

environments {
    development {
        dataSource {
            dbCreate = "create-drop" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:h2:devDb;MVCC=TRUE;LOCK_TIMEOUT=10000;DB_CLOSE_ON_EXIT=FALSE"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:mysql://aag984g2u10k1v.cjnty1aqdt2l.us-west-2.rds.amazonaws.com:3306"
            username = "neue"
            password = "password"
        }
    }
    production {
        dataSource {
            username = "neue"
            password = "password"
            pooled = true
            dbCreate = "update"
            driverClassName = "com.mysql.jdbc.Driver"
            url = "jdbc:mysql://aa1wzpr1sl1cpf2.cjnty1aqdt2l.us-west-2.rds.amazonaws.com:3306/ebdb?user=neue&password=password"
            dialect = org.hibernate.dialect.MySQL5InnoDBDialect
            properties {
                validationQuery = "SELECT 1"
                testOnBorrow = true
                testOnReturn = true
                testWhileIdle = true
                timeBetweenEvictionRunsMillis = 1800000
                numTestsPerEvictionRun = 3
                minEvictableIdleTimeMillis = 1800000
            }
        }
    }
}
