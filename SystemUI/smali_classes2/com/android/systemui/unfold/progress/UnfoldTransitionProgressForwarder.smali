.class public final Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;
.super Lcom/android/systemui/unfold/progress/IUnfoldAnimation$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public remoteListener:Lcom/android/systemui/unfold/progress/IUnfoldTransitionListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    const-class v0, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;

    .line 8
    .line 9
    const-string v0, "UnfoldTransitionProgressForwarder"

    .line 10
    .line 11
    sput-object v0, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/unfold/progress/IUnfoldAnimation$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onTransitionFinished()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "onTransitionFinished"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;->remoteListener:Lcom/android/systemui/unfold/progress/IUnfoldTransitionListener;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    check-cast p0, Lcom/android/systemui/unfold/progress/IUnfoldTransitionListener$Stub$Proxy;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/unfold/progress/IUnfoldTransitionListener$Stub$Proxy;->onTransitionFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    sget-object v0, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "Failed call onTransitionFinished"

    .line 22
    .line 23
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    :goto_0
    return-void
.end method

.method public final onTransitionProgress(F)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;->remoteListener:Lcom/android/systemui/unfold/progress/IUnfoldTransitionListener;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcom/android/systemui/unfold/progress/IUnfoldTransitionListener$Stub$Proxy;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/systemui/unfold/progress/IUnfoldTransitionListener$Stub$Proxy;->onTransitionProgress(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    sget-object p1, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, "Failed call onTransitionProgress"

    .line 15
    .line 16
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    .line 18
    .line 19
    :cond_0
    :goto_0
    return-void
.end method

.method public final onTransitionStarted()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "onTransitionStarted"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;->remoteListener:Lcom/android/systemui/unfold/progress/IUnfoldTransitionListener;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    check-cast p0, Lcom/android/systemui/unfold/progress/IUnfoldTransitionListener$Stub$Proxy;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/unfold/progress/IUnfoldTransitionListener$Stub$Proxy;->onTransitionStarted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    sget-object v0, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "Failed call onTransitionStarted"

    .line 22
    .line 23
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    :goto_0
    return-void
.end method
