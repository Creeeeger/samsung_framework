.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/RotationPolicyWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/RotationPolicyWrapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RotationPolicyWrapper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RotationPolicyWrapper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RotationPolicyWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/RotationPolicyWrapper;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/RotationPolicyWrapper;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RotationPolicyWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/RotationPolicyWrapper;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public setRotationLock(Z)V
    .locals 0

    .line 1
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
