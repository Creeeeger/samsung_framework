.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field private final mWrapped:Landroid/view/RemoteAnimationAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationRunnerCompat;JJLandroid/app/IApplicationThread;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p6, Landroid/view/RemoteAnimationAdapter;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat;->wrapRemoteAnimationRunner(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationRunnerCompat;)Landroid/view/IRemoteAnimationRunner$Stub;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    move-object v0, p6

    .line 11
    move-wide v2, p2

    .line 12
    move-wide v4, p4

    .line 13
    invoke-direct/range {v0 .. v5}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    .line 14
    .line 15
    .line 16
    iput-object p6, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat;->mWrapped:Landroid/view/RemoteAnimationAdapter;

    .line 17
    .line 18
    return-void
.end method

.method public static wrapRemoteAnimationRunner(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationRunnerCompat;)Landroid/view/IRemoteAnimationRunner$Stub;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat$1;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationRunnerCompat;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static wrapRemoteTransition(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationRunnerCompat;)Landroid/window/IRemoteTransition$Stub;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat$2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat$2;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationRunnerCompat;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public getWrapped()Landroid/view/RemoteAnimationAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat;->mWrapped:Landroid/view/RemoteAnimationAdapter;

    .line 2
    .line 3
    return-object p0
.end method
