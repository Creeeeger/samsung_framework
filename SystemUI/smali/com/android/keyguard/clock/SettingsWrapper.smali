.class public final Lcom/android/keyguard/clock/SettingsWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mMigration:Lcom/android/keyguard/clock/SettingsWrapper$Migration;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/keyguard/clock/SettingsWrapper$Migrator;

    invoke-direct {v0, p1}, Lcom/android/keyguard/clock/SettingsWrapper$Migrator;-><init>(Landroid/content/ContentResolver;)V

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/clock/SettingsWrapper;-><init>(Landroid/content/ContentResolver;Lcom/android/keyguard/clock/SettingsWrapper$Migration;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/android/keyguard/clock/SettingsWrapper$Migration;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/keyguard/clock/SettingsWrapper;->mContentResolver:Landroid/content/ContentResolver;

    .line 4
    iput-object p2, p0, Lcom/android/keyguard/clock/SettingsWrapper;->mMigration:Lcom/android/keyguard/clock/SettingsWrapper$Migration;

    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "clock"

    .line 2
    .line 3
    const-string v1, "ClockFaceSettings"

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    .line 12
    .line 13
    :try_start_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 17
    return-object p0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    const-string p1, "JSON object does not contain clock field."

    .line 20
    .line 21
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0

    .line 26
    :catch_1
    move-exception v2

    .line 27
    const-string v3, "Settings value is not valid JSON"

    .line 28
    .line 29
    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/keyguard/clock/SettingsWrapper;->mMigration:Lcom/android/keyguard/clock/SettingsWrapper$Migration;

    .line 33
    .line 34
    check-cast p0, Lcom/android/keyguard/clock/SettingsWrapper$Migrator;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    .line 40
    .line 41
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/keyguard/clock/SettingsWrapper$Migrator;->mContentResolver:Landroid/content/ContentResolver;

    .line 48
    .line 49
    const-string v0, "lock_screen_custom_clock_face"

    .line 50
    .line 51
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {p0, v0, v2, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_2
    move-exception p0

    .line 60
    const-string p2, "Failed migrating settings value to JSON format"

    .line 61
    .line 62
    invoke-static {v1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .line 64
    .line 65
    :goto_0
    return-object p1
.end method
