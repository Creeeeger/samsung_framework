.class public final Lcom/samsung/android/knox/net/vpn/KnoxVpnPolicyConstants;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final ACTION_BIND_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.VPN_BIND_RESULT"

.field public static final ALLOWED_METHODS_VENDOR_SETTINGS:[Ljava/lang/String;

.field public static final ANDROID_SETTINGS_PKG:Ljava/lang/String; = "com.android.settings"

.field public static final CONTAINER_VPN_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_VPN_CONTAINER"

.field public static final ENTERPRISE_PREMIUM_VPN_POLICY_SERVICE:Ljava/lang/String; = "enterprise_premium_vpn_policy"

.field public static final EXTRA_BIND_CID:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.VPN_BIND_CID"

.field public static final EXTRA_BIND_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.VPN_BIND_STATUS"

.field public static final EXTRA_BIND_VENDOR:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.VPN_BIND_VENDOR"

.field public static final INTENT_CONTAINER_ADMIN_CHANGED_ACTION:Ljava/lang/String; = "enterprise.container.admin.changed"

.field public static final JSON_TAG_ANDROID_PARENT:Ljava/lang/String; = "ANDROID_VPN_PARAMETERS"

.field public static final KNOX_VPN_POLICY_SERVICE:Ljava/lang/String; = "knox_vpn_policy"

.field public static final NETWORK_TRAFFIC_AGENT_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_NETWORK_TRAFFIC_AGENT"

.field public static final NEW_FW:Ljava/lang/String; = "2.0"

.field public static final OLD_FW:Ljava/lang/String; = "1.0"

.field public static TAG:Ljava/lang/String; = "KnoxVpnPolicyConstants"

.field public static final VPN_CERT_TYPE_AUTOMATIC:Ljava/lang/String; = "Automatic"

.field public static final VPN_CERT_TYPE_DISABLED:Ljava/lang/String; = "Disabled"

.field public static final VPN_CERT_TYPE_MANUAL:Ljava/lang/String; = "Manual"

.field public static final VPN_FW_PROP:Ljava/lang/String; = "net.vpn.framework"

.field public static final VPN_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_VPN_GENERIC"

.field public static final VPN_TYPE_ANYCONNECT:Ljava/lang/String; = "anyconnect"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "getAllVpnProfiles"

    .line 2
    .line 3
    const-string v1, "removeVpnProfile"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnPolicyConstants;->ALLOWED_METHODS_VENDOR_SETTINGS:[Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
