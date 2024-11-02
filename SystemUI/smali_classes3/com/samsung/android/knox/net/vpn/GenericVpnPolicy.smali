.class public final Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DBG:Z

.field public static final ERROR_SUPPORTED_VERSION:F = 2.4f

.field public static final INVALID_CONTAINER_ID:I = 0x0

.field public static final KEY_TETHER_AUTH_LOGIN_PAGE:Ljava/lang/String; = "key-tether-auth-login-page"

.field public static final KEY_TETHER_AUTH_RESPONSE_PAGE:Ljava/lang/String; = "key-tether-auth-response-page"

.field public static final KEY_TETHER_CAPTIVE_PORTAL_ALIAS:Ljava/lang/String; = "key-tether-captive-portal-alias"

.field public static final KEY_TETHER_CAPTIVE_PORTAL_CERTIFICATE:Ljava/lang/String; = "key-tether-captive-portal-certificate"

.field public static final KEY_TETHER_CAPTIVE_PORTAL_CERT_PASSWORD:Ljava/lang/String; = "key-tether-captive-portal-cert-password"

.field public static final KEY_TETHER_CA_ALIAS:Ljava/lang/String; = "key-tether-ca-alias"

.field public static final KEY_TETHER_CA_CERTIFICATE:Ljava/lang/String; = "key-tether-ca-certificate"

.field public static final KEY_TETHER_CA_CERT_PASSWORD:Ljava/lang/String; = "key-tether-ca-cert-password"

.field public static final KEY_TETHER_CLIENT_CERTIFICATE_ISSUED_CN:Ljava/lang/String; = "key-tether-client-certificate-issued-cn"

.field public static final KEY_TETHER_CLIENT_CERTIFICATE_ISSUER_CN:Ljava/lang/String; = "key-tether-client-certificate-issuer-cn"

.field public static final KEY_TETHER_USER_ALIAS:Ljava/lang/String; = "key-tether-user-alias"

.field public static final KEY_TETHER_USER_CERTIFICATE:Ljava/lang/String; = "key-tether-user-certificate"

.field public static final KEY_TETHER_USER_CERT_PASSWORD:Ljava/lang/String; = "key-tether-user-cert-password"

.field public static final KNOX_SDK_VERSION_CHARACTER:Ljava/lang/String; = "KNOX_ENTERPRISE_SDK_VERSION_"

.field public static final KNOX_VPN_V2_ENABLED:Z

.field public static TAG:Ljava/lang/String;

.field public static VPN_RETURN_BOOL_ERROR:Z

.field public static VPN_RETURN_INT_ERROR:I

.field public static VPN_RETURN_INT_SUCCESS:I

.field public static genericVpnObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static mContext:Landroid/content/Context;

.field public static mEnterpriseDeviceManager:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

.field public static mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;


# instance fields
.field public vendorName:Ljava/lang/String;

.field public vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ro.config.knox"

    .line 2
    .line 3
    const-string v1, "0"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "v30"

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput-boolean v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->KNOX_VPN_V2_ENABLED:Z

    .line 16
    .line 17
    const/4 v0, -0x1

    .line 18
    sput v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->VPN_RETURN_INT_ERROR:I

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    sput v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->VPN_RETURN_INT_SUCCESS:I

    .line 22
    .line 23
    sput-boolean v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->VPN_RETURN_BOOL_ERROR:Z

    .line 24
    .line 25
    const-string v0, "GenericVpnPolicy"

    .line 26
    .line 27
    sput-object v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    sput-boolean v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->DBG:Z

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    sput-object v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    sput-object v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 39
    .line 40
    new-instance v0, Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->genericVpnObjectMap:Ljava/util/HashMap;

    .line 46
    .line 47
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    .line 20
    iput-object v0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vendorName:Ljava/lang/String;

    .line 21
    sput-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mContext:Landroid/content/Context;

    .line 22
    sget-boolean p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->DBG:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GenericVpnPolicy ctor : vendorName = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    .line 23
    invoke-static {v0, v1, p1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_0
    iput-object p2, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vendorName:Ljava/lang/String;

    .line 4
    sput-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mContext:Landroid/content/Context;

    .line 5
    sget-boolean p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->DBG:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v0, "GenericVpnPolicy ctor : vendorName = "

    .line 6
    invoke-static {v0, p2, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    iput-object p2, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vendorName:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;)Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;
    .locals 8

    .line 1
    const-string v0, "GenericVpnPolicy getInstance : bindSuccess = "

    .line 2
    .line 3
    const-string v1, "GenericVpnPolicy getInstance : vendorName = "

    .line 4
    .line 5
    const-class v2, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v3, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    .line 9
    .line 10
    iget v4, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 11
    .line 12
    invoke-static {v3, v4}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    sget-boolean v5, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->DBG:Z

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sget-object v6, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v7, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    .line 36
    .line 37
    :cond_0
    const/4 v1, 0x0

    .line 38
    if-eqz v4, :cond_4

    .line 39
    .line 40
    :try_start_1
    const-class v6, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;

    .line 41
    .line 42
    monitor-enter v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    :try_start_2
    sget-object v7, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->genericVpnObjectMap:Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    if-eqz v7, :cond_1

    .line 50
    .line 51
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->genericVpnObjectMap:Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    check-cast p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    new-instance v7, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;

    .line 61
    .line 62
    invoke-direct {v7, p0, p1}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;)V

    .line 63
    .line 64
    .line 65
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->genericVpnObjectMap:Ljava/util/HashMap;

    .line 66
    .line 67
    invoke-virtual {p0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-object p0, v7

    .line 71
    :goto_0
    if-eqz p0, :cond_3

    .line 72
    .line 73
    const-string v7, "com.android.settings"

    .line 74
    .line 75
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    if-nez v7, :cond_3

    .line 80
    .line 81
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    invoke-interface {v7, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->bindKnoxVpnInterface(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz v5, :cond_2

    .line 90
    .line 91
    sget-object v5, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 92
    .line 93
    new-instance v7, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    :cond_2
    if-nez p1, :cond_3

    .line 109
    .line 110
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->genericVpnObjectMap:Ljava/util/HashMap;

    .line 111
    .line 112
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-object p0, v1

    .line 116
    :cond_3
    monitor-exit v6

    .line 117
    move-object v1, p0

    .line 118
    goto :goto_1

    .line 119
    :catchall_0
    move-exception p0

    .line 120
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    :try_start_3
    throw p0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 122
    :catch_0
    move-exception p0

    .line 123
    :try_start_4
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 124
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v4, "GenericVpnPolicy getInstance : returning null for vendorName = "

    .line 131
    .line 132
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v3, "; Exception = "

    .line 139
    .line 140
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 155
    .line 156
    .line 157
    :cond_4
    :goto_1
    monitor-exit v2

    .line 158
    return-object v1

    .line 159
    :catchall_1
    move-exception p0

    .line 160
    monitor-exit v2

    .line 161
    throw p0
.end method

.method public static getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "knox_vpn_policy"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 16
    .line 17
    :cond_0
    sget-boolean v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->DBG:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    sget-object v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "KnoxVpnPolicy getService : mKnoxVpnPolicyService = "

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v2, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    :cond_1
    sget-object v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 43
    .line 44
    return-object v0
.end method

.method public static getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p1, "_"

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method


# virtual methods
.method public final activateVpnProfile(Ljava/lang/String;Z)I
    .locals 5

    .line 1
    const-string v0, "startActivityAsUser  KnoxVpnPPDialog userId = "

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    move v2, v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-eqz v2, :cond_2

    .line 15
    .line 16
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    invoke-direct {v2, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 23
    .line 24
    .line 25
    const-string v4, "GenericVpnPolicy.activateVpnProfile"

    .line 26
    .line 27
    invoke-static {v2, v4}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v2, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    .line 33
    .line 34
    invoke-interface {v2, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->activateVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;Z)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_3

    .line 49
    .line 50
    if-ne p2, v3, :cond_3

    .line 51
    .line 52
    new-instance p0, Landroid/content/Intent;

    .line 53
    .line 54
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    const-string p2, "com.android.vpndialogs"

    .line 66
    .line 67
    const-string v2, "com.android.vpndialogs.KnoxVpnPPDialog"

    .line 68
    .line 69
    invoke-virtual {p0, p2, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    const/high16 p2, 0x50800000

    .line 73
    .line 74
    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    sget-object p2, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    if-eqz p2, :cond_3

    .line 80
    .line 81
    sget-object p2, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 82
    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    sget-object p2, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mContext:Landroid/content/Context;

    .line 99
    .line 100
    new-instance v0, Landroid/os/UserHandle;

    .line 101
    .line 102
    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2, p0, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 110
    .line 111
    const-string p1, "activateVpnProfile >> mEnterpriseResponseData == null"

    .line 112
    .line 113
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 118
    .line 119
    const-string p1, "activateVpnProfile >> mService == null"

    .line 120
    .line 121
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :catch_0
    move-exception p0

    .line 126
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 127
    .line 128
    new-instance p2, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v0, "Failed at GenericVpnPolicy API activateVpnProfile-Exception"

    .line 131
    .line 132
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :cond_3
    :goto_1
    return v1
.end method

.method public final addAllContainerPackagesToVpn(ILjava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-eqz v1, :cond_3

    .line 12
    .line 13
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string v2, "GenericVpnPolicy.addAllContainerPackagesToVpn"

    .line 23
    .line 24
    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    .line 30
    .line 31
    invoke-interface {v1, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->addAllContainerPackagesToVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;ILjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    iget p1, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mFailureState:I

    .line 38
    .line 39
    const/16 p2, 0xb

    .line 40
    .line 41
    if-eq p1, p2, :cond_1

    .line 42
    .line 43
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 53
    .line 54
    const-string p1, "The container id entered is invalid and throwing an exception"

    .line 55
    .line 56
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 66
    .line 67
    const-string p1, "addAllContainerPackagesToVpn > mEnterpriseResponseData == null"

    .line 68
    .line 69
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 74
    .line 75
    const-string p1, "addAllContainerPackagesToVpn > mService == null"

    .line 76
    .line 77
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catch_0
    move-exception p0

    .line 82
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 83
    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v1, "Failed at GenericVpnPolicy API addAllContainerPackagesToVpn-Exception"

    .line 87
    .line 88
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :goto_1
    return v0
.end method

.method public final addAllPackagesToVpn(Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-eqz v1, :cond_2

    .line 12
    .line 13
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string v2, "GenericVpnPolicy.addAllPackagesToVpn"

    .line 23
    .line 24
    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    .line 30
    .line 31
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->addAllPackagesToVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p0, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 47
    .line 48
    const-string p1, "addAllPackagesToVpn > mEnterpriseResponseData == null"

    .line 49
    .line 50
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 55
    .line 56
    const-string p1, "addAllPackagesToVpn > mService == null"

    .line 57
    .line 58
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catch_0
    move-exception p0

    .line 63
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v2, "Exception at GenericVpnPolicy API addAllPackagesToVpn:"

    .line 68
    .line 69
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p0, v1, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    return v0
.end method

.method public final addContainerPackagesToVpn(I[Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-eqz v1, :cond_3

    .line 12
    .line 13
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string v2, "GenericVpnPolicy.addContainerPackagesToVpn"

    .line 23
    .line 24
    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    .line 30
    .line 31
    invoke-interface {v1, p0, p1, p2, p3}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->addContainerPackagesToVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    iget p1, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mFailureState:I

    .line 38
    .line 39
    const/16 p2, 0xb

    .line 40
    .line 41
    if-eq p1, p2, :cond_1

    .line 42
    .line 43
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 53
    .line 54
    const-string p1, "The container id entered is invalid and throwing an exception"

    .line 55
    .line 56
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 66
    .line 67
    const-string p1, "addContainerPackageToVpn > mEnterpriseResponseData == null"

    .line 68
    .line 69
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 74
    .line 75
    const-string p1, "addContainerPackageToVpn > mService == null"

    .line 76
    .line 77
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catch_0
    move-exception p0

    .line 82
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 83
    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string p3, "Failed at GenericVpnPolicy API addContainerPackageToVpn-Exception"

    .line 87
    .line 88
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :goto_1
    return v0
.end method

.method public final addPackagesToVpn([Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-eqz v1, :cond_2

    .line 12
    .line 13
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string v2, "GenericVpnPolicy.addPackagesToVpn"

    .line 23
    .line 24
    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    .line 30
    .line 31
    invoke-interface {v1, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->addPackagesToVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p0, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 47
    .line 48
    const-string p1, "addPackageToVpn > mEnterpriseResponseData == null"

    .line 49
    .line 50
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 55
    .line 56
    const-string p1, "addPackageToVpn > mService == null"

    .line 57
    .line 58
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catch_0
    move-exception p0

    .line 63
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 64
    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, "Failed at GenericVpnPolicy API addPackagetoDatabase-Exception"

    .line 68
    .line 69
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    return v0
.end method

.method public final allowUsbTetheringOverVpn(Ljava/lang/String;ZLandroid/os/Bundle;)I
    .locals 3

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-eqz v1, :cond_5

    .line 13
    .line 14
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 21
    .line 22
    .line 23
    const-string v2, "GenericVpnPolicy.allowUsbTetheringOverVpn"

    .line 24
    .line 25
    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    if-eqz p2, :cond_4

    .line 29
    .line 30
    if-eqz p3, :cond_3

    .line 31
    .line 32
    invoke-virtual {p3}, Landroid/os/Bundle;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {p3}, Landroid/os/Bundle;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-nez p2, :cond_2

    .line 44
    .line 45
    sget-object p2, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    .line 48
    .line 49
    invoke-interface {p2, p0, p1, p3}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->allowAuthUsbTetheringOverVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;Landroid/os/Bundle;)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move p0, v0

    .line 55
    goto :goto_2

    .line 56
    :cond_3
    :goto_1
    sget-object p2, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 57
    .line 58
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    .line 59
    .line 60
    invoke-interface {p2, p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->allowNoAuthUsbTetheringOverVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    goto :goto_2

    .line 65
    :cond_4
    sget-object p2, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 66
    .line 67
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    .line 68
    .line 69
    invoke-interface {p2, p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->disallowUsbTetheringOverVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    goto :goto_2

    .line 74
    :cond_5
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 75
    .line 76
    const-string p1, "KVES not started"

    .line 77
    .line 78
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    const/16 p0, 0x6e

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :catch_0
    move-exception p0

    .line 85
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 86
    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string p3, "Exception at GenericVpnPolicy API allowUsbTetheringOverVpn:"

    .line 90
    .line 91
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const/16 p0, 0x65

    .line 98
    .line 99
    :goto_2
    if-ne p0, v0, :cond_6

    .line 100
    .line 101
    sget p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->VPN_RETURN_INT_SUCCESS:I

    .line 102
    .line 103
    :cond_6
    const/16 p1, 0x8d

    .line 104
    .line 105
    if-eq p0, p1, :cond_7

    .line 106
    .line 107
    return p0

    .line 108
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    .line 109
    .line 110
    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    .line 111
    .line 112
    .line 113
    throw p0
.end method

.method public final createVpnProfile(Ljava/lang/String;)I
    .locals 3

    .line 1
    sget v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->VPN_RETURN_INT_ERROR:I

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-eqz v1, :cond_2

    .line 13
    .line 14
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 21
    .line 22
    .line 23
    const-string v2, "GenericVpnPolicy.createVpnProfile"

    .line 24
    .line 25
    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    .line 31
    .line 32
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->createVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 48
    .line 49
    const-string p1, "createVpnProfile Error> mEnterpriseResponseData == null"

    .line 50
    .line 51
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 56
    .line 57
    const-string p1, "createVpnProfile Error > mService == null"

    .line 58
    .line 59
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catch_0
    move-exception p0

    .line 64
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 65
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v2, "Failed at GenericVpnPolicy API createVpnProfile-Exception"

    .line 69
    .line 70
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p0, v1, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :goto_1
    const/16 p0, 0x8d

    .line 77
    .line 78
    if-eq v0, p0, :cond_3

    .line 79
    .line 80
    return v0

    .line 81
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 82
    .line 83
    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    .line 84
    .line 85
    .line 86
    throw p0
.end method

.method public final getAllContainerPackagesInVpnProfile(ILjava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-eqz v0, :cond_3

    .line 11
    .line 12
    sget-object v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    .line 15
    .line 16
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getAllContainerPackagesInVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;ILjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    iget p1, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mFailureState:I

    .line 23
    .line 24
    const/16 p2, 0xb

    .line 25
    .line 26
    if-eq p1, p2, :cond_1

    .line 27
    .line 28
    if-nez p1, :cond_4

    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p0, [Ljava/lang/String;

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    const-string p1, "The container id entered is invalid and throwing an exception"

    .line 38
    .line 39
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 45
    .line 46
    .line 47
    throw p0

    .line 48
    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 49
    .line 50
    const-string p1, "getAllContainerPackagesInVpnProfile > mEnterpriseResponseData == null"

    .line 51
    .line 52
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 57
    .line 58
    const-string p1, "getAllContainerPackagesInVpnProfile > mService == null"

    .line 59
    .line 60
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception p0

    .line 65
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 66
    .line 67
    const-string p2, "Failed at EnterpriseContainerManager API getAllContainerPackagesInVpnProfile "

    .line 68
    .line 69
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .line 71
    .line 72
    :cond_4
    :goto_1
    const/4 p0, 0x0

    .line 73
    return-object p0
.end method

.method public final getAllPackagesInVpnProfile(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-eqz v0, :cond_2

    .line 11
    .line 12
    sget-object v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    .line 15
    .line 16
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getAllPackagesInVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    iget p1, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mFailureState:I

    .line 23
    .line 24
    if-nez p1, :cond_3

    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, [Ljava/lang/String;

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string p1, "getAllPackagesInVpnProfile > mEnterpriseResponseData == null"

    .line 34
    .line 35
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    const-string p1, "getAllPackagesInVpnProfile > mService == null"

    .line 42
    .line 43
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catch_0
    move-exception p0

    .line 48
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 49
    .line 50
    const-string v0, "Failed at EnterpriseContainerManager API getAllPackagesInVpnProfile "

    .line 51
    .line 52
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 56
    return-object p0
.end method

.method public final getAllVpnProfiles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-eqz v1, :cond_2

    .line 12
    .line 13
    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    .line 16
    .line 17
    invoke-interface {v1, p0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getAllVpnProfiles(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    iget v1, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mFailureState:I

    .line 24
    .line 25
    if-nez v1, :cond_3

    .line 26
    .line 27
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Ljava/util/List;

    .line 30
    .line 31
    move-object v0, p0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    const-string v1, "getAllVpnProfiles > mEnterpriseResponseData == null"

    .line 36
    .line 37
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    const-string v1, "getAllVpnProfiles > mService == null"

    .line 44
    .line 45
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception p0

    .line 50
    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 51
    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v3, "Failed at GenericVpnPolicy API getAllVpnProfiles-Exception"

    .line 55
    .line 56
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p0, v2, v1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_1
    return-object v0
.end method

.method public final getCACertificate(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CertificateInfo;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-eqz v1, :cond_2

    .line 12
    .line 13
    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    .line 16
    .line 17
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getCACertificate(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    iget p1, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mFailureState:I

    .line 24
    .line 25
    if-nez p1, :cond_3

    .line 26
    .line 27
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Lcom/samsung/android/knox/keystore/CertificateInfo;

    .line 30
    .line 31
    move-object v0, p0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    const-string p1, "getCACertificate > mEnterpriseResponseData == null"

    .line 36
    .line 37
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    const-string p1, "getCACertificate > mService == null"

    .line 44
    .line 45
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception p0

    .line 50
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v2, "Failed at GenericVpnPolicy API getCACertificate-Exception"

    .line 55
    .line 56
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p0, v1, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_1
    return-object v0
.end method

.method public final getErrorString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-eqz v1, :cond_3

    .line 12
    .line 13
    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    .line 16
    .line 17
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getErrorString(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_2

    .line 22
    .line 23
    iget p1, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mStatus:I

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    if-ne p1, v1, :cond_4

    .line 29
    .line 30
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p0, Ljava/lang/String;

    .line 33
    .line 34
    move-object v0, p0

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 37
    .line 38
    const-string p1, "getErrorString > mEnterpriseResponseData == null"

    .line 39
    .line 40
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "getErrorString > mService == null"

    .line 47
    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catch_0
    move-exception p0

    .line 53
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v2, "Failed at GenericVpnPolicy API getErrorString-Exception"

    .line 58
    .line 59
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p0, v1, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_4
    :goto_1
    return-object v0
.end method

.method public final getNotificationDismissibleFlag(I)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move v1, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-eqz v1, :cond_1

    .line 12
    .line 13
    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    .line 16
    .line 17
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getNotificationDismissibleFlag(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string p1, "getNotificationDismissibleFlag > mService == null"

    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catch_0
    move-exception p0

    .line 31
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "Failed at GenericVpnPolicy API getNotificationDismissibleFlag-Exception"

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p0, v1, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :goto_1
    return v0
.end method

.method public final getState(Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-eqz v1, :cond_2

    .line 12
    .line 13
    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    .line 16
    .line 17
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getState(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p0, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    const-string p1, "getState >> mEnterpriseResponseData == null"

    .line 35
    .line 36
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    const-string p1, "getState >> mService == null"

    .line 43
    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception p0

    .line 49
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v2, "Failed at GenericVpnPolicy API getState-Exception"

    .line 54
    .line 55
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p0, v1, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_1
    return v0
.end method

.method public final getUserCertificate(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CertificateInfo;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-eqz v1, :cond_2

    .line 12
    .line 13
    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    .line 16
    .line 17
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getUserCertificate(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    iget p1, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mFailureState:I

    .line 24
    .line 25
    if-nez p1, :cond_3

    .line 26
    .line 27
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Lcom/samsung/android/knox/keystore/CertificateInfo;

    .line 30
    .line 31
    move-object v0, p0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    const-string p1, "getUserCertificate > mEnterpriseResponseData == null"

    .line 36
    .line 37
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    const-string p1, "getUserCertificate > mService == null"

    .line 44
    .line 45
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception p0

    .line 50
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v2, "Failed at GenericVpnPolicy API getUserCertificate-Exception"

    .line 55
    .line 56
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p0, v1, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_1
    return-object v0
.end method

.method public final getVpnModeOfOperation(Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-eqz v1, :cond_2

    .line 12
    .line 13
    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    .line 16
    .line 17
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getVpnModeOfOperation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    iget p1, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mFailureState:I

    .line 24
    .line 25
    if-nez p1, :cond_3

    .line 26
    .line 27
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 37
    .line 38
    const-string p1, "getVpnModeOfOperation > mEnterpriseResponseData == null"

    .line 39
    .line 40
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "getVpnModeOfOperation > mService == null"

    .line 47
    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catch_0
    move-exception p0

    .line 53
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v2, "Failed at GenericVpnPolicy API getVpnModeOfOperation-Exception"

    .line 58
    .line 59
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p0, v1, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    :goto_1
    return v0
.end method

.method public final getVpnProfile(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-eqz v1, :cond_2

    .line 12
    .line 13
    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    .line 16
    .line 17
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    iget p1, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mFailureState:I

    .line 24
    .line 25
    if-nez p1, :cond_3

    .line 26
    .line 27
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Ljava/lang/String;

    .line 30
    .line 31
    move-object v0, p0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    const-string p1, "getVpnProfile Error> mEnterpriseResponseData == null"

    .line 36
    .line 37
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    const-string p1, "getVpnProfile Error > mService == null"

    .line 44
    .line 45
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception p0

    .line 50
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v2, "Failed at GenericVpnPolicy API getVpnProfile-Exception"

    .line 55
    .line 56
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p0, v1, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_1
    return-object v0
.end method

.method public final isUsbTetheringOverVpnEnabled(Ljava/lang/String;)I
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-eqz v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 19
    .line 20
    .line 21
    const-string v1, "GenericVpnPolicy.isUsbTetheringOverVpnEnabled"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    .line 29
    .line 30
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->isUsbTetheringOverVpnEnabled(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    const-string p1, "KVES not started"

    .line 38
    .line 39
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    const/16 p0, 0x6e

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catch_0
    move-exception p0

    .line 46
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v1, "Exception at GenericVpnPolicy API isUsbTetheringOverVpnEnabled:"

    .line 51
    .line 52
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/16 p0, 0x65

    .line 59
    .line 60
    :goto_1
    const/16 p1, 0x64

    .line 61
    .line 62
    if-ne p0, p1, :cond_2

    .line 63
    .line 64
    sget p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->VPN_RETURN_INT_SUCCESS:I

    .line 65
    .line 66
    :cond_2
    const/16 p1, 0x8d

    .line 67
    .line 68
    if-eq p0, p1, :cond_3

    .line 69
    .line 70
    return p0

    .line 71
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 72
    .line 73
    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    .line 74
    .line 75
    .line 76
    throw p0
.end method

.method public final removeAllContainerPackagesFromVpn(ILjava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-eqz v1, :cond_3

    .line 12
    .line 13
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string v2, "GenericVpnPolicy.removeAllContainerPackagesFromVpn"

    .line 23
    .line 24
    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    .line 30
    .line 31
    invoke-interface {v1, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->removeAllContainerPackagesFromVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;ILjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    iget p1, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mFailureState:I

    .line 38
    .line 39
    const/16 p2, 0xb

    .line 40
    .line 41
    if-eq p1, p2, :cond_1

    .line 42
    .line 43
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 53
    .line 54
    const-string p1, "The container id entered is invalid and throwing an exception"

    .line 55
    .line 56
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 66
    .line 67
    const-string p1, "removeAllContainerPackagesFromVpn > mEnterpriseResponseData == null"

    .line 68
    .line 69
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 74
    .line 75
    const-string p1, "removeAllContainerPackagesFromVpn > mService == null"

    .line 76
    .line 77
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catch_0
    move-exception p0

    .line 82
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 83
    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v1, "Exception at GenericVpnPolicy API removeAllContainerPackagesFromVpn:"

    .line 87
    .line 88
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :goto_1
    return v0
.end method

.method public final removeAllPackagesFromVpn(Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-eqz v1, :cond_2

    .line 12
    .line 13
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string v2, "GenericVpnPolicy.removeAllPackagesFromVpn"

    .line 23
    .line 24
    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    .line 30
    .line 31
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->removeAllPackagesFromVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p0, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 47
    .line 48
    const-string p1, "removeAllPackagesFromVpn > mEnterpriseResponseData == null"

    .line 49
    .line 50
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 55
    .line 56
    const-string p1, "removeAllPackagesFromVpn > mService == null"

    .line 57
    .line 58
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catch_0
    move-exception p0

    .line 63
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v2, "Exception at GenericVpnPolicy API removeAllPackagesFromVpn:"

    .line 68
    .line 69
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p0, v1, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    return v0
.end method

.method public final removeContainerPackagesFromVpn(I[Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-eqz v1, :cond_3

    .line 12
    .line 13
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string v2, "GenericVpnPolicy.removeContainerPackagesFromVpn"

    .line 23
    .line 24
    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    .line 30
    .line 31
    invoke-interface {v1, p0, p1, p2, p3}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->removeContainerPackagesFromVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    iget p1, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mFailureState:I

    .line 38
    .line 39
    const/16 p2, 0xb

    .line 40
    .line 41
    if-eq p1, p2, :cond_1

    .line 42
    .line 43
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 53
    .line 54
    const-string p1, "The container id entered is invalid and throwing an exception"

    .line 55
    .line 56
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 66
    .line 67
    const-string p1, "removeContainerPackageFromVpn > mEnterpriseResponseData == null"

    .line 68
    .line 69
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 74
    .line 75
    const-string p1, "removeContainerPackageFromVpn > mService == null"

    .line 76
    .line 77
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catch_0
    move-exception p0

    .line 82
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 83
    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string p3, "Exception at GenericVpnPolicy API removeContainerPackageFromVpn:"

    .line 87
    .line 88
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :goto_1
    return v0
.end method

.method public final removePackagesFromVpn([Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-eqz v1, :cond_2

    .line 12
    .line 13
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string v2, "GenericVpnPolicy.removePackagesFromVpn"

    .line 23
    .line 24
    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    .line 30
    .line 31
    invoke-interface {v1, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->removePackagesFromVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p0, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 47
    .line 48
    const-string p1, "removePackageFromVpn > mEnterpriseResponseData == null"

    .line 49
    .line 50
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 55
    .line 56
    const-string p1, "removePackageFromVpn > mService == null"

    .line 57
    .line 58
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catch_0
    move-exception p0

    .line 63
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 64
    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, "Exception at GenericVpnPolicy API removePackageFromVpn:"

    .line 68
    .line 69
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    return v0
.end method

.method public final removeVpnProfile(Ljava/lang/String;)I
    .locals 3

    .line 1
    sget v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->VPN_RETURN_INT_ERROR:I

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-eqz v1, :cond_2

    .line 13
    .line 14
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 21
    .line 22
    .line 23
    const-string v2, "GenericVpnPolicy.removeVpnProfile"

    .line 24
    .line 25
    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    .line 31
    .line 32
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->removeVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 48
    .line 49
    const-string p1, "removeVpnProfile\u00a0 Error> mEnterpriseResponseData == null"

    .line 50
    .line 51
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 56
    .line 57
    const-string p1, "removeVpnProfile\u00a0 Error > mService == null"

    .line 58
    .line 59
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catch_0
    move-exception p0

    .line 64
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 65
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v2, "Failed at GenericVpnPolicy API removeVpnProfile\u00a0-Exception"

    .line 69
    .line 70
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p0, v1, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :goto_1
    return v0
.end method

.method public final setAutoRetryOnConnectionError(Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v1, v0

    .line 11
    :goto_0
    if-eqz v1, :cond_2

    .line 12
    .line 13
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string v2, "GenericVpnPolicy.setAutoRetryOnConnectionError"

    .line 23
    .line 24
    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    .line 30
    .line 31
    invoke-interface {v1, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->setAutoRetryOnConnectionError(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;Z)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    iget p1, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mFailureState:I

    .line 38
    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p0, Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 51
    .line 52
    const-string p1, "setAutoRetryOnConnection Error > mEnterpriseResponseData == null"

    .line 53
    .line 54
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 59
    .line 60
    const-string p1, "setAutoRetryOnConnection Error > mService == null"

    .line 61
    .line 62
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catch_0
    move-exception p0

    .line 67
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 68
    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v1, "Failed at GenericVpnPolicy API setAutoRetryOnConnectionError-Exception"

    .line 72
    .line 73
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    :goto_1
    return v0
.end method

.method public final setCACertificate(Ljava/lang/String;[B)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v1, v0

    .line 11
    :goto_0
    if-eqz v1, :cond_2

    .line 12
    .line 13
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string v2, "GenericVpnPolicy.setCACertificate"

    .line 23
    .line 24
    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    .line 30
    .line 31
    invoke-interface {v1, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->setCACertificate(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;[B)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    iget p1, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mFailureState:I

    .line 38
    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p0, Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 51
    .line 52
    const-string p1, "setCACertificate > mEnterpriseResponseData == null"

    .line 53
    .line 54
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 59
    .line 60
    const-string p1, "setCACertificate > mService == null"

    .line 61
    .line 62
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catch_0
    move-exception p0

    .line 67
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 68
    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v1, "Failed at GenericVpnPolicy API setCACertificate-Exception"

    .line 72
    .line 73
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    :goto_1
    return v0
.end method

.method public final setNotificationDismissibleFlag(Ljava/lang/String;II)I
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-eqz v1, :cond_1

    .line 12
    .line 13
    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    .line 16
    .line 17
    invoke-interface {v1, p0, p1, p2, p3}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->setNotificationDismissibleFlag(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;II)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string p1, "setNotificationDismissibleFlag > mService == null"

    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catch_0
    move-exception p0

    .line 31
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string p3, "Failed at GenericVpnPolicy API setNotificationDismissibleFlag-Exception"

    .line 36
    .line 37
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :goto_1
    return v0
.end method

.method public final setServerCertValidationUserAcceptanceCriteria(Ljava/lang/String;ZLjava/util/List;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v1, v0

    .line 11
    :goto_0
    if-eqz v1, :cond_2

    .line 12
    .line 13
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string v2, "GenericVpnPolicy.setServerCertValidationUserAcceptanceCriteria"

    .line 23
    .line 24
    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 28
    .line 29
    iget-object v4, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    .line 30
    .line 31
    move-object v5, p1

    .line 32
    move v6, p2

    .line 33
    move-object v7, p3

    .line 34
    move v8, p4

    .line 35
    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->setServerCertValidationUserAcceptanceCriteria(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;ZLjava/util/List;I)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    iget p1, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mFailureState:I

    .line 42
    .line 43
    if-nez p1, :cond_3

    .line 44
    .line 45
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p0, Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 55
    .line 56
    const-string p1, "setServerCertValidationUserAcceptanceCriteria Error > mEnterpriseResponseData == null"

    .line 57
    .line 58
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 63
    .line 64
    const-string p1, "setServerCertValidationUserAcceptanceCriteria Error > mService == null"

    .line 65
    .line 66
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catch_0
    move-exception p0

    .line 71
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 72
    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string p3, "Failed at GenericVpnPolicy API setServerCertValidationUserAcceptanceCriteria-Exception"

    .line 76
    .line 77
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    :goto_1
    return v0
.end method

.method public final setUserCertificate(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v1, v0

    .line 11
    :goto_0
    if-eqz v1, :cond_2

    .line 12
    .line 13
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string v2, "GenericVpnPolicy.setUserCertificate"

    .line 23
    .line 24
    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    .line 30
    .line 31
    invoke-interface {v1, p0, p1, p2, p3}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->setUserCertificate(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;[BLjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    iget p1, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mFailureState:I

    .line 38
    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p0, Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 51
    .line 52
    const-string p1, "setUserCertificate > mEnterpriseResponseData == null"

    .line 53
    .line 54
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 59
    .line 60
    const-string p1, "setUserCertificate > mService == null"

    .line 61
    .line 62
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catch_0
    move-exception p0

    .line 67
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 68
    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string p3, "Failed at GenericVpnPolicy API setUserCertificate-Exception"

    .line 72
    .line 73
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    :goto_1
    return v0
.end method

.method public final setVpnModeOfOperation(Ljava/lang/String;I)I
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-eqz v1, :cond_2

    .line 12
    .line 13
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string v2, "GenericVpnPolicy.setVpnModeOfOperation"

    .line 23
    .line 24
    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    .line 30
    .line 31
    invoke-interface {v1, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->setVpnModeOfOperation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;I)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    iget p1, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mFailureState:I

    .line 38
    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p0, Ljava/lang/Integer;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 51
    .line 52
    const-string p1, "setVpnModeOfOperation > mEnterpriseResponseData == null"

    .line 53
    .line 54
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 59
    .line 60
    const-string p1, "setVpnModeOfOperation > mService == null"

    .line 61
    .line 62
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catch_0
    move-exception p0

    .line 67
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    .line 68
    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v1, "Failed at GenericVpnPolicy API setVpnModeOfOperation-Exception"

    .line 72
    .line 73
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    :goto_1
    return v0
.end method
