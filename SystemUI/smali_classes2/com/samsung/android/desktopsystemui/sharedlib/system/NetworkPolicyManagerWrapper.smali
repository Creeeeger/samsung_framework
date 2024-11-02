.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/NetworkPolicyManagerWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field private static final mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/NetworkPolicyManagerWrapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/NetworkPolicyManagerWrapper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/NetworkPolicyManagerWrapper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/NetworkPolicyManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/NetworkPolicyManagerWrapper;

    .line 7
    .line 8
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "netpolicy"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/net/NetworkPolicyManager;

    .line 19
    .line 20
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/NetworkPolicyManagerWrapper;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 21
    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/NetworkPolicyManagerWrapper;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/NetworkPolicyManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/NetworkPolicyManagerWrapper;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public getRestrictBackground()Z
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/NetworkPolicyManagerWrapper;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
