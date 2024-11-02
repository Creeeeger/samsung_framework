.class public final Lnotification/src/com/android/systemui/SrPromptProcessor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lnotification/src/com/android/systemui/BasePromptProcessor;


# instance fields
.field public final API_KEY:Ljava/lang/String;

.field public final apkSigningKey:Ljava/lang/String;

.field public final appInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

.field public final context:Landroid/content/Context;

.field public notificationKey:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnotification/src/com/android/systemui/SrPromptProcessor$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lnotification/src/com/android/systemui/SrPromptProcessor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    const-string v0, "SrPromptProcessor"

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->context:Landroid/content/Context;

    .line 7
    .line 8
    const-string v1, "74NEkgeVa8SprJ7p"

    .line 9
    .line 10
    iput-object v1, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->API_KEY:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/high16 v4, 0x8000000

    .line 23
    .line 24
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    array-length v3, p1

    .line 39
    if-lez v3, :cond_0

    .line 40
    .line 41
    aget-object p1, p1, v1

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/content/pm/Signature;->toChars()[C

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-instance v3, Ljava/lang/String;

    .line 48
    .line 49
    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p1

    .line 54
    const-string v3, "getApkSigningKey: "

    .line 55
    .line 56
    invoke-static {v3, p1, v0}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    move-object v3, v2

    .line 60
    :goto_0
    iput-object v3, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->apkSigningKey:Ljava/lang/String;

    .line 61
    .line 62
    :try_start_1
    const-string p1, "SHA-256"

    .line 63
    .line 64
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object v3, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->API_KEY:Ljava/lang/String;

    .line 69
    .line 70
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    move v4, v1

    .line 77
    :goto_1
    const/4 v5, 0x7

    .line 78
    if-ge v4, v5, :cond_1

    .line 79
    .line 80
    invoke-virtual {p1, v3}, Ljava/security/MessageDigest;->digest([B)[B

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    add-int/lit8 v4, v4, 0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    invoke-static {}, Ljava/util/HexFormat;->of()Ljava/util/HexFormat;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1, v3}, Ljava/util/HexFormat;->formatHex([B)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    goto :goto_2

    .line 96
    :catch_1
    move-exception p1

    .line 97
    const-string v3, "Exception getLongHash: "

    .line 98
    .line 99
    invoke-static {v3, p1, v0}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :goto_2
    new-instance p1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    .line 103
    .line 104
    invoke-direct {p1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;-><init>()V

    .line 105
    .line 106
    .line 107
    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;->ONDEVICE:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    .line 108
    .line 109
    iput-object v0, p1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->requestType:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    .line 110
    .line 111
    iput-object v2, p1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->apiKey:Ljava/lang/String;

    .line 112
    .line 113
    iget-object v0, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->apkSigningKey:Ljava/lang/String;

    .line 114
    .line 115
    iput-object v0, p1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->signingKey:Ljava/lang/String;

    .line 116
    .line 117
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    .line 118
    .line 119
    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;-><init>(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;I)V

    .line 120
    .line 121
    .line 122
    iput-object v0, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->appInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    .line 123
    .line 124
    return-void
.end method


# virtual methods
.method public final getNotificationKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->notificationKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setNotificationKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->notificationKey:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final textPrompting(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$mSrResponseCallback$1;)V
    .locals 3

    .line 1
    const-string v0, "SrPromptProcessor"

    .line 2
    .line 3
    const-string v1, "textPrompting"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;

    .line 9
    .line 10
    iget-object v1, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->context:Landroid/content/Context;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "target_language"

    .line 21
    .line 22
    invoke-virtual {v1, v2, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->appInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    .line 26
    .line 27
    invoke-virtual {v0, p0, p1, v1}, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;->smartReply(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Ljava/util/Map;)Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    new-instance p1, Lnotification/src/com/android/systemui/SrPromptProcessor$textPrompting$1;

    .line 32
    .line 33
    invoke-direct {p1, p3}, Lnotification/src/com/android/systemui/SrPromptProcessor$textPrompting$1;-><init>(Lnotification/src/com/android/systemui/PromptCallback;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;

    .line 37
    .line 38
    .line 39
    return-void
.end method
