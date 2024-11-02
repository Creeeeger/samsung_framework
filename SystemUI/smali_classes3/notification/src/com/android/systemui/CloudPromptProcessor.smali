.class public final Lnotification/src/com/android/systemui/CloudPromptProcessor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lnotification/src/com/android/systemui/BasePromptProcessor;


# instance fields
.field public final apkSigningKey:Ljava/lang/String;

.field public final appInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

.field public final context:Landroid/content/Context;

.field public notificationKey:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnotification/src/com/android/systemui/CloudPromptProcessor$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lnotification/src/com/android/systemui/CloudPromptProcessor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    const-string v0, "CloudPromptProcessor"

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lnotification/src/com/android/systemui/CloudPromptProcessor;->context:Landroid/content/Context;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/high16 v4, 0x8000000

    .line 19
    .line 20
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    array-length v3, p1

    .line 35
    if-lez v3, :cond_0

    .line 36
    .line 37
    aget-object p1, p1, v2

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/content/pm/Signature;->toChars()[C

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance v3, Ljava/lang/String;

    .line 44
    .line 45
    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p1

    .line 50
    const-string v3, "getApkSigningKey: "

    .line 51
    .line 52
    invoke-static {v3, p1, v0}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    move-object v3, v1

    .line 56
    :goto_0
    iput-object v3, p0, Lnotification/src/com/android/systemui/CloudPromptProcessor;->apkSigningKey:Ljava/lang/String;

    .line 57
    .line 58
    :try_start_1
    const-string p1, "SHA-256"

    .line 59
    .line 60
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string v3, "74NEkgeVa8SprJ7p"

    .line 65
    .line 66
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 67
    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    move v4, v2

    .line 73
    :goto_1
    const/4 v5, 0x7

    .line 74
    if-ge v4, v5, :cond_1

    .line 75
    .line 76
    invoke-virtual {p1, v3}, Ljava/security/MessageDigest;->digest([B)[B

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    add-int/lit8 v4, v4, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    invoke-static {}, Ljava/util/HexFormat;->of()Ljava/util/HexFormat;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1, v3}, Ljava/util/HexFormat;->formatHex([B)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    goto :goto_2

    .line 92
    :catch_1
    move-exception p1

    .line 93
    const-string v3, "Exception getLongHash: "

    .line 94
    .line 95
    invoke-static {v3, p1, v0}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :goto_2
    new-instance p1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    .line 99
    .line 100
    invoke-direct {p1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;-><init>()V

    .line 101
    .line 102
    .line 103
    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;->CLOUD:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    .line 104
    .line 105
    iput-object v0, p1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->requestType:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    .line 106
    .line 107
    iput-boolean v2, p1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->enableStreaming:Z

    .line 108
    .line 109
    iput-object v1, p1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->apiKey:Ljava/lang/String;

    .line 110
    .line 111
    iget-object v0, p0, Lnotification/src/com/android/systemui/CloudPromptProcessor;->apkSigningKey:Ljava/lang/String;

    .line 112
    .line 113
    iput-object v0, p1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->signingKey:Ljava/lang/String;

    .line 114
    .line 115
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    .line 116
    .line 117
    invoke-direct {v0, p1, v2}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;-><init>(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;I)V

    .line 118
    .line 119
    .line 120
    iput-object v0, p0, Lnotification/src/com/android/systemui/CloudPromptProcessor;->appInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    .line 121
    .line 122
    return-void
.end method

.method public static final access$getErrorMessage(Lnotification/src/com/android/systemui/CloudPromptProcessor;I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lnotification/src/com/android/systemui/CloudPromptProcessor;->context:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    const p1, 0x7f1310fa

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const p1, 0x7f1310f5

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const p1, 0x7f1310f7

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :goto_0
    return-object p0
.end method

.method public static final access$parseOutput(Lnotification/src/com/android/systemui/CloudPromptProcessor;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    sget p0, Lkotlin/Result;->$r8$clinit:I

    .line 5
    .line 6
    new-instance p0, Lcom/google/gson/Gson;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    .line 9
    .line 10
    .line 11
    const-class v0, Lnotification/src/com/android/systemui/CloudPromptProcessor$Output;

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lnotification/src/com/android/systemui/CloudPromptProcessor$Output;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    sget p1, Lkotlin/Result;->$r8$clinit:I

    .line 22
    .line 23
    new-instance p1, Lkotlin/Result$Failure;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    move-object p0, p1

    .line 29
    :goto_0
    instance-of p1, p0, Lkotlin/Result$Failure;

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    :cond_0
    check-cast p0, Lnotification/src/com/android/systemui/CloudPromptProcessor$Output;

    .line 35
    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lnotification/src/com/android/systemui/CloudPromptProcessor$Output;->getResponse()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-nez p0, :cond_2

    .line 49
    .line 50
    :cond_1
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 51
    .line 52
    :cond_2
    return-object p0
.end method


# virtual methods
.method public final getNotificationKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnotification/src/com/android/systemui/CloudPromptProcessor;->notificationKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setNotificationKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnotification/src/com/android/systemui/CloudPromptProcessor;->notificationKey:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final textPrompting(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$mSrResponseCallback$1;)V
    .locals 2

    .line 1
    new-instance p2, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "feature_type"

    .line 7
    .line 8
    const-string v1, "systemui_notification"

    .line 9
    .line 10
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;

    .line 14
    .line 15
    iget-object v1, p0, Lnotification/src/com/android/systemui/CloudPromptProcessor;->context:Landroid/content/Context;

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lnotification/src/com/android/systemui/CloudPromptProcessor;->appInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    .line 21
    .line 22
    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;->smartReply(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Ljava/util/Map;)Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance p2, Lnotification/src/com/android/systemui/CloudPromptProcessor$textPrompting$1;

    .line 27
    .line 28
    invoke-direct {p2, p0, p3}, Lnotification/src/com/android/systemui/CloudPromptProcessor$textPrompting$1;-><init>(Lnotification/src/com/android/systemui/CloudPromptProcessor;Lnotification/src/com/android/systemui/PromptCallback;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;

    .line 32
    .line 33
    .line 34
    return-void
.end method
