.class Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat$1;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat;->wrapRemoteAnimationRunner(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationRunnerCompat;)Landroid/view/IRemoteAnimationRunner$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$remoteAnimationAdapter:Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationRunnerCompat;


# direct methods
.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationRunnerCompat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat$1;->val$remoteAnimationAdapter:Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationRunnerCompat;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationCancelled()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat$1;->val$remoteAnimationAdapter:Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationRunnerCompat;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationRunnerCompat;->onAnimationCancelled()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 6

    .line 1
    invoke-static {p2}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    invoke-static {p3}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    invoke-static {p4}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    new-instance v5, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat$1$1;

    .line 14
    .line 15
    invoke-direct {v5, p0, p5}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat$1$1;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat$1;Landroid/view/IRemoteAnimationFinishedCallback;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat$1;->val$remoteAnimationAdapter:Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationRunnerCompat;

    .line 19
    .line 20
    move v1, p1

    .line 21
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationRunnerCompat;->onAnimationStart(I[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
