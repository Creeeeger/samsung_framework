.class public final Lcom/android/systemui/navigationbar/NavBarTipPopup;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final context:Landroid/content/Context;

.field public currentMessage:I

.field public final handler:Landroid/os/Handler;

.field public isTipPopupShowing:Z

.field public final logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field public navBarWidth:I

.field public final onAttachStateChangeListener:Lcom/android/systemui/navigationbar/NavBarTipPopup$onAttachStateChangeListener$1;

.field public final tipLayout:Landroid/view/View;

.field public tipPopup:Lcom/samsung/android/widget/SemTipPopup;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/navigationbar/NavBarTipPopup$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/NavBarTipPopup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/systemui/basic/util/LogWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->windowManager:Landroid/view/WindowManager;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 9
    .line 10
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const p2, 0x7f0d0237

    .line 15
    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipLayout:Landroid/view/View;

    .line 23
    .line 24
    new-instance p2, Landroid/os/Handler;

    .line 25
    .line 26
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->handler:Landroid/os/Handler;

    .line 30
    .line 31
    new-instance p2, Lcom/android/systemui/navigationbar/NavBarTipPopup$onAttachStateChangeListener$1;

    .line 32
    .line 33
    invoke-direct {p2, p0}, Lcom/android/systemui/navigationbar/NavBarTipPopup$onAttachStateChangeListener$1;-><init>(Lcom/android/systemui/navigationbar/NavBarTipPopup;)V

    .line 34
    .line 35
    .line 36
    iput-object p2, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->onAttachStateChangeListener:Lcom/android/systemui/navigationbar/NavBarTipPopup$onAttachStateChangeListener$1;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final hide()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->isTipPopupShowing:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipLayout:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->windowManager:Landroid/view/WindowManager;

    .line 15
    .line 16
    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "hide fail="

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 40
    .line 41
    const-string v1, "Tip"

    .line 42
    .line 43
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    :goto_0
    return-void
.end method
