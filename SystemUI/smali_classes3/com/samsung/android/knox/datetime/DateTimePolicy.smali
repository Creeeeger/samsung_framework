.class public final Lcom/samsung/android/knox/datetime/DateTimePolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final ACTION_EVENT_NTP_SERVER_UNREACHABLE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.EVENT_NTP_SERVER_UNREACHABLE"

.field public static final ACTION_UPDATE_NTP_PARAMETERS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UPDATE_NTP_PARAMETERS_INTERNAL"

.field public static TAG:Ljava/lang/String; = "DateTimePolicy"


# instance fields
.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getAutomaticTime()Z
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/datetime/DateTimePolicy;->getService()Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->getAutomaticTime(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object v0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed at DateTime policy API getAutomaticTime"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public final getDateFormat()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/datetime/DateTimePolicy;->getService()Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->getDateFormat(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object v0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed at DateTime policy API getDateFormat"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public final getDateTime()Ljava/util/Date;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/datetime/DateTimePolicy;->getService()Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->getDateTime(Lcom/samsung/android/knox/ContextInfo;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 23
    .line 24
    .line 25
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return-object p0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    sget-object v0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    const-string v1, "Failed at DateTime policy API getDateTime"

    .line 31
    .line 32
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    .line 34
    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method

.method public final getDaylightSavingTime()Z
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/datetime/DateTimePolicy;->getService()Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->getDaylightSavingTime(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object v0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed at DateTime policy API getDaylightSavingTime"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public final getNtpInfo()Lcom/samsung/android/knox/datetime/NtpInfo;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/datetime/DateTimePolicy;->getService()Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    .line 8
    .line 9
    const/16 v1, 0xe

    .line 10
    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 16
    .line 17
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->getNtpInfo(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/datetime/NtpInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string v0, "setNtpInfo() : This device doesn\'t support this API."

    .line 25
    .line 26
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    sget-object v0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v1, "Failed at DateTime policy API getNtpInfo"

    .line 34
    .line 35
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method

.method public final getService()Lcom/samsung/android/knox/datetime/IDateTimePolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "date_time_policy"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/knox/datetime/IDateTimePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 18
    .line 19
    return-object p0
.end method

.method public final getTimeFormat()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/datetime/DateTimePolicy;->getService()Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->getTimeFormat(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object v0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed at DateTime policy API getTimeFormat"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public final getTimeZone()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/datetime/DateTimePolicy;->getService()Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->getTimeZone(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object v0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed at DateTime policy API getTimeZone"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public final isDateTimeChangeEnabled()Z
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/datetime/DateTimePolicy;->getService()Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->isDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object v0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed at DateTime policy API setTimeFormat"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final setAutomaticTime(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "DateTimePolicy.setAutomaticTime"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/datetime/DateTimePolicy;->getService()Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->setAutomaticTime(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/datetime/DateTimePolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed at DateTime policy API setAutomaticTime"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final setDateTime(IIIIII)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "DateTimePolicy.setDateTime"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/datetime/DateTimePolicy;->getService()Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x5

    .line 19
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x2

    .line 23
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    invoke-virtual {v0, p1, p3}, Ljava/util/Calendar;->set(II)V

    .line 28
    .line 29
    .line 30
    const/16 p1, 0xb

    .line 31
    .line 32
    invoke-virtual {v0, p1, p4}, Ljava/util/Calendar;->set(II)V

    .line 33
    .line 34
    .line 35
    const/16 p1, 0xc

    .line 36
    .line 37
    invoke-virtual {v0, p1, p5}, Ljava/util/Calendar;->set(II)V

    .line 38
    .line 39
    .line 40
    const/16 p1, 0xd

    .line 41
    .line 42
    invoke-virtual {v0, p1, p6}, Ljava/util/Calendar;->set(II)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide p2

    .line 53
    invoke-interface {p1, p0, p2, p3}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->setDateTime(Lcom/samsung/android/knox/ContextInfo;J)Z

    .line 54
    .line 55
    .line 56
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return p0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    sget-object p1, Lcom/samsung/android/knox/datetime/DateTimePolicy;->TAG:Ljava/lang/String;

    .line 60
    .line 61
    const-string p2, "Failed at DateTime policy API setDateTime"

    .line 62
    .line 63
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .line 65
    .line 66
    :cond_0
    const/4 p0, 0x0

    .line 67
    return p0
.end method

.method public final setDateTimeChangeEnabled(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "DateTimePolicy.setDateTimeChangeEnabled"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/datetime/DateTimePolicy;->getService()Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->setDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/datetime/DateTimePolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed at DateTime policy API setTimeFormat"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final setNtpInfo(Lcom/samsung/android/knox/datetime/NtpInfo;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "DateTimePolicy.setNtpInfo"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/datetime/DateTimePolicy;->getService()Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    .line 15
    .line 16
    const/16 v1, 0xe

    .line 17
    .line 18
    if-lt v0, v1, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 23
    .line 24
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->setNtpInfo(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/datetime/NtpInfo;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0

    .line 29
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    const-string p1, "setNtpInfo() : This device doesn\'t support this API."

    .line 32
    .line 33
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    sget-object p1, Lcom/samsung/android/knox/datetime/DateTimePolicy;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    const-string v0, "Failed at DateTime policy API setNtpInfo"

    .line 41
    .line 42
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 46
    return p0
.end method

.method public final setTimeFormat(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "DateTimePolicy.setTimeFormat"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/datetime/DateTimePolicy;->getService()Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->setTimeFormat(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/datetime/DateTimePolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed at DateTime policy API setTimeFormat"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final setTimeZone(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "DateTimePolicy.setTimeZone"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/datetime/DateTimePolicy;->getService()Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mService:Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/datetime/DateTimePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->setTimeZone(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/datetime/DateTimePolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed at DateTime policy API setTimeZone"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method
