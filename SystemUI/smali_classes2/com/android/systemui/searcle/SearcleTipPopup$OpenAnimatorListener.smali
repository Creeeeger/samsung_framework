.class public final Lcom/android/systemui/searcle/SearcleTipPopup$OpenAnimatorListener;
.super Lcom/android/systemui/searcle/SearcleTipPopup$BaseAnimatorListener;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/searcle/SearcleTipPopup;


# direct methods
.method public constructor <init>(Lcom/android/systemui/searcle/SearcleTipPopup;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup$OpenAnimatorListener;->this$0:Lcom/android/systemui/searcle/SearcleTipPopup;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/searcle/SearcleTipPopup$BaseAnimatorListener;-><init>(Lcom/android/systemui/searcle/SearcleTipPopup;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 9

    .line 1
    sget p1, Lcom/android/systemui/searcle/SearcleTipPopup;->INIT_SCALE:F

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleTipPopup$OpenAnimatorListener;->this$0:Lcom/android/systemui/searcle/SearcleTipPopup;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->windowManager:Landroid/view/WindowManager;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->tipLayout:Lcom/android/systemui/searcle/SearcleTipView;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    .line 15
    .line 16
    const/4 v2, -0x1

    .line 17
    const/4 v3, -0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    const/16 v6, 0x7f6

    .line 21
    .line 22
    const/4 v7, 0x0

    .line 23
    const/4 v8, -0x3

    .line 24
    move-object v1, p0

    .line 25
    invoke-direct/range {v1 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 26
    .line 27
    .line 28
    const/16 v1, 0x10

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    .line 31
    .line 32
    .line 33
    const-string v1, "SearcleTip"

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method
