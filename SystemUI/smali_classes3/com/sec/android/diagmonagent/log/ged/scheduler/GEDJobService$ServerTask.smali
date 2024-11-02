.class public Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$ServerTask;
.super Landroid/os/AsyncTask;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService;


# direct methods
.method public constructor <init>(Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$ServerTask;->this$0:Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public varargs doInBackground()Ljava/lang/Boolean;
    .locals 25

    move-object/from16 v1, p0

    .line 2
    iget-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$ServerTask;->this$0:Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService;

    invoke-virtual {v0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    move-result-object v0

    .line 3
    new-instance v2, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;

    .line 4
    iget-object v0, v0, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->context:Landroid/content/Context;

    .line 5
    invoke-direct {v2, v0}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v2}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->getServiceInfo()Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;

    move-result-object v3

    if-nez v3, :cond_0

    .line 7
    sget-object v0, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->TAG:Ljava/lang/String;

    const-string v1, "Start jobService but serviceInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 9
    :cond_0
    iget-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$ServerTask;->this$0:Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService;

    invoke-virtual {v0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 10
    iget-object v4, v3, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->serviceId:Ljava/lang/String;

    .line 11
    :try_start_0
    sput-object v0, Lcom/sec/android/diagmonagent/common/logger/AppLog;->mContext:Landroid/content/Context;

    .line 12
    sput-object v4, Lcom/sec/android/diagmonagent/common/logger/AppLog;->mServiceId:Ljava/lang/String;

    .line 13
    sget-object v4, Lcom/sec/android/diagmonagent/common/logger/AppLog;->sInstance:Lcom/sec/android/diagmonagent/common/logger/AppLogData;

    if-nez v4, :cond_1

    .line 14
    new-instance v4, Lcom/sec/android/diagmonagent/common/logger/AppLogData;

    invoke-direct {v4, v0}, Lcom/sec/android/diagmonagent/common/logger/AppLogData;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/sec/android/diagmonagent/common/logger/AppLog;->sInstance:Lcom/sec/android/diagmonagent/common/logger/AppLogData;

    .line 15
    sget-object v0, Lcom/sec/android/diagmonagent/common/logger/AppLog;->mServiceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 16
    sget-object v0, Lcom/sec/android/diagmonagent/common/logger/AppLog;->mServiceId:Ljava/lang/String;

    sput-object v0, Lcom/sec/android/diagmonagent/common/logger/AppLog;->SERVICE_ID_TAG:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "DIAGMON_SDK"

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$ServerTask;->this$0:Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService;

    invoke-virtual {v0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "JWT_TOKEN"

    const-string v5, ""

    .line 19
    invoke-static {v0, v4, v5}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    invoke-static {}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->getInstance()Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;

    move-result-object v0

    iget-object v4, v1, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$ServerTask;->this$0:Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService;

    invoke-virtual {v4}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->refreshToken(Landroid/content/Context;)V

    .line 22
    :cond_2
    iget-object v0, v3, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->serviceId:Ljava/lang/String;

    .line 23
    iget-object v4, v1, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$ServerTask;->this$0:Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService;

    invoke-virtual {v4}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget v6, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDScheduler;->$r8$clinit:I

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v8, "DIAGMON_PREFERENCE"

    const/4 v9, 0x0

    .line 25
    invoke-virtual {v4, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "lastPDUpdatedTime"

    const-wide/16 v12, 0x0

    .line 26
    invoke-interface {v10, v11, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 27
    sget-object v10, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-string v12, "pollingInterval"

    const-string v13, "1"

    .line 28
    invoke-static {v4, v12, v13}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v12, v4

    invoke-virtual {v10, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    add-long/2addr v12, v14

    cmp-long v4, v6, v12

    const/4 v6, 0x1

    if-ltz v4, :cond_3

    move v4, v6

    goto :goto_1

    :cond_3
    move v4, v9

    :goto_1
    if-eqz v4, :cond_7

    .line 30
    invoke-static {}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->getInstance()Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;

    move-result-object v4

    iget-object v7, v1, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$ServerTask;->this$0:Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService;

    invoke-virtual {v7}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    new-instance v4, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "https://diagmon-policy.samsungdm.com"

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    sget-object v12, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->DEVICE_KEY:Ljava/lang/String;

    const-string v12, "version_info_url"

    const-string v13, "/policy/version.json"

    .line 33
    invoke-static {v7, v12, v13}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 34
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v13, "GET"

    invoke-direct {v4, v10, v13}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v4}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->execute()Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 36
    iget v10, v4, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->code:I

    const/16 v13, 0xc8

    if-ne v10, v13, :cond_4

    const-string v10, "succeed to connect to get policy version"

    .line 37
    invoke-static {v10}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)V

    .line 38
    iget-object v10, v4, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->body:Ljava/lang/String;

    .line 39
    invoke-static {v10}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)V

    .line 40
    iget-object v4, v4, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->body:Ljava/lang/String;

    .line 41
    new-instance v10, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyVersionResponse;

    invoke-direct {v10}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyVersionResponse;-><init>()V

    .line 42
    :try_start_1
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "url"

    .line 43
    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 44
    iput-object v4, v10, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyVersionResponse;->url:Ljava/lang/String;

    const-string v4, "latestDefault"

    .line 45
    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 46
    iput-object v4, v10, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyVersionResponse;->latestDefault:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 47
    :catch_1
    sget-object v4, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->TAG:Ljava/lang/String;

    const-string v13, "JSONException occurred while parsing policy version info"

    invoke-static {v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_2
    iget-object v4, v10, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyVersionResponse;->url:Ljava/lang/String;

    .line 49
    invoke-static {v7, v12, v4}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v4, v10, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyVersionResponse;->latestDefault:Ljava/lang/String;

    const-string v10, "needed_version"

    .line 51
    invoke-static {v7, v10, v4}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    goto :goto_4

    .line 52
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "Failed to connect to get policy version : "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    iget v4, v4, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->code:I

    .line 54
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v4, "Policy version response is null"

    .line 55
    invoke-static {v4}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)V

    :goto_3
    move v4, v9

    :goto_4
    if-eqz v4, :cond_6

    .line 56
    invoke-static {}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->getInstance()Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;

    move-result-object v4

    iget-object v7, v1, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$ServerTask;->this$0:Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService;

    invoke-virtual {v7}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v0, v9}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->refreshPolicy(Landroid/content/Context;Ljava/lang/String;I)V

    .line 57
    :cond_6
    iget-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$ServerTask;->this$0:Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService;

    invoke-virtual {v0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 58
    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 59
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 60
    invoke-interface {v0, v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 61
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_5

    .line 62
    :cond_7
    sget-object v0, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->TAG:Ljava/lang/String;

    const-string v4, "Policy download interval is not yet passed"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :goto_5
    iget v0, v3, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->status:I

    if-eqz v0, :cond_8

    .line 64
    sget-object v0, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->TAG:Ljava/lang/String;

    const-string v4, "There isn\'t unregistered service"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    goto :goto_6

    .line 65
    :cond_8
    invoke-static {}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->getInstance()Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;

    move-result-object v0

    iget-object v4, v1, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$ServerTask;->this$0:Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService;

    invoke-virtual {v4}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v3, v9}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->serviceRegister(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;I)V

    move v0, v6

    :goto_6
    const-string v4, "timestamp"

    if-eqz v0, :cond_a

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v10, v2, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->MAX_KEEP_TIME:J

    sub-long/2addr v7, v10

    .line 67
    iget-object v0, v2, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-wide/16 v10, 0x0

    invoke-interface {v0, v4, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v3, "status"

    .line 68
    invoke-interface {v0, v3, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_9

    cmp-long v3, v7, v10

    if-lez v3, :cond_9

    cmp-long v3, v12, v7

    if-gtz v3, :cond_9

    .line 69
    sget-object v3, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->TAG:Ljava/lang/String;

    const-string v7, "delete service by time"

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 71
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 73
    :cond_9
    invoke-virtual {v2}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->getServiceInfo()Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;

    move-result-object v3

    if-nez v3, :cond_a

    .line 74
    sget-object v0, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->TAG:Ljava/lang/String;

    const-string v1, "ServiceInfo is deleted by time"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 76
    :cond_a
    iget v0, v3, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->status:I

    if-eq v0, v6, :cond_b

    .line 77
    sget-object v0, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->TAG:Ljava/lang/String;

    const-string v1, "Service is not registered, reports don\'t send"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 78
    :cond_b
    iget-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$ServerTask;->this$0:Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService;

    invoke-virtual {v0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getEventDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;

    move-result-object v0

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v7, v0, Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;->MAX_KEEP_TIME:J

    sub-long/2addr v2, v7

    .line 80
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "Event"

    const-string v8, "timestamp<=?"

    invoke-virtual {v3, v7, v8, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 82
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x64

    .line 84
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    filled-new-array {v2, v7, v11}, [Ljava/lang/String;

    move-result-object v2

    const-string v7, "expirationTime>? AND expirationTime<=? AND status=?"

    .line 85
    invoke-virtual {v0, v7, v2}, Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;->getEvents(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 86
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v11, "Result"

    const-string v12, "clientStatusCode"

    const-string v13, "eventId"

    const-string v14, "serviceId"

    if-eqz v7, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;

    .line 87
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 88
    iget-object v9, v7, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->serviceId:Ljava/lang/String;

    .line 89
    invoke-virtual {v15, v14, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v9, v7, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->eventId:Ljava/lang/String;

    .line 91
    invoke-virtual {v15, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x130

    .line 92
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v15, v12, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    iget-wide v12, v7, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->timestamp:J

    .line 94
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v15, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v9, 0x0

    .line 95
    invoke-virtual {v3, v11, v9, v15}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 96
    iput-object v5, v7, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->eventId:Ljava/lang/String;

    .line 97
    iput-object v5, v7, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->s3Path:Ljava/lang/String;

    const-wide/16 v11, 0x0

    .line 98
    iput-wide v11, v7, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->expirationTime:J

    .line 99
    invoke-virtual {v0, v7}, Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;->update(Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)V

    const/4 v9, 0x0

    goto :goto_7

    .line 100
    :cond_c
    iget-object v2, v1, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$ServerTask;->this$0:Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/app/job/JobService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    if-nez v2, :cond_d

    goto :goto_8

    .line 101
    :cond_d
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v2

    if-nez v2, :cond_e

    goto :goto_8

    .line 102
    :cond_e
    invoke-virtual {v2, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 103
    sget-object v2, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->TAG:Ljava/lang/String;

    const-string v3, "Wi-Fi is connected"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_f
    :goto_8
    const/4 v6, 0x0

    :goto_9
    if-eqz v6, :cond_10

    .line 104
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "status=?"

    .line 105
    invoke-virtual {v0, v3, v2}, Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;->getEvents(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_a

    .line 106
    :cond_10
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "status=? AND networkMode=?"

    .line 107
    invoke-virtual {v0, v3, v2}, Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;->getEvents(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 108
    :goto_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_11

    .line 109
    sget-object v0, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->TAG:Ljava/lang/String;

    const-string v2, "There isn\'t unreported event"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 110
    :cond_11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;

    .line 111
    invoke-static {}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->getInstance()Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;

    move-result-object v3

    iget-object v5, v1, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$ServerTask;->this$0:Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService;

    invoke-virtual {v5}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {v5, v2, v3}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->eventReport(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/db/model/Event;I)V

    goto :goto_b

    .line 112
    :cond_12
    :goto_c
    iget-object v0, v1, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$ServerTask;->this$0:Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService;

    invoke-virtual {v0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getResultDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;

    move-result-object v0

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v5, v0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;->MAX_KEEP_TIME:J

    sub-long/2addr v2, v5

    .line 114
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v11, v8, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 115
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 116
    :try_start_2
    iget-object v0, v0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v18, "Result"

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v3, :cond_13

    :try_start_3
    const-string v0, "cursor is null"

    .line 117
    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)V

    if-eqz v3, :cond_16

    goto :goto_e

    .line 118
    :cond_13
    :goto_d
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 119
    new-instance v0, Lcom/sec/android/diagmonagent/log/ged/db/model/Result;

    invoke-direct {v0}, Lcom/sec/android/diagmonagent/log/ged/db/model/Result;-><init>()V

    const-string v5, "id"

    .line 120
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 121
    iput v5, v0, Lcom/sec/android/diagmonagent/log/ged/db/model/Result;->id:I

    .line 122
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 123
    iput-object v5, v0, Lcom/sec/android/diagmonagent/log/ged/db/model/Result;->eventId:Ljava/lang/String;

    .line 124
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 125
    iput-object v5, v0, Lcom/sec/android/diagmonagent/log/ged/db/model/Result;->serviceId:Ljava/lang/String;

    .line 126
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 127
    iput v5, v0, Lcom/sec/android/diagmonagent/log/ged/db/model/Result;->clientStatusCode:I

    .line 128
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 129
    iput-wide v5, v0, Lcom/sec/android/diagmonagent/log/ged/db/model/Result;->timestamp:J

    .line 130
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_d

    .line 131
    :cond_14
    :goto_e
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_10

    :catchall_0
    move-exception v0

    move-object v4, v0

    .line 132
    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    move-object v5, v0

    if-eqz v3, :cond_15

    .line 133
    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_f

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_7
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_15
    :goto_f
    throw v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    const-string v0, "Fail to get unreported results"

    .line 134
    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)V

    .line 135
    :cond_16
    :goto_10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_17

    .line 136
    sget-object v0, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->TAG:Ljava/lang/String;

    const-string v1, "There isn\'t unreported result"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 137
    :cond_17
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/diagmonagent/log/ged/db/model/Result;

    .line 138
    invoke-static {}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->getInstance()Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;

    move-result-object v3

    iget-object v4, v1, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$ServerTask;->this$0:Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService;

    invoke-virtual {v4}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {v4, v2, v3}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->resultReport(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/db/model/Result;I)V

    goto :goto_11

    .line 139
    :cond_18
    :goto_12
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Landroid/app/job/JobParameters;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$ServerTask;->doInBackground()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute()V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$ServerTask;->onPostExecute()V

    return-void
.end method
