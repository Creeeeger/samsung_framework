.class public final Lcom/android/systemui/searcle/SearcleTipPopup$CloseAnimatorListener;
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
    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup$CloseAnimatorListener;->this$0:Lcom/android/systemui/searcle/SearcleTipPopup;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/searcle/SearcleTipPopup$BaseAnimatorListener;-><init>(Lcom/android/systemui/searcle/SearcleTipPopup;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    sget p1, Lcom/android/systemui/searcle/SearcleTipPopup;->INIT_SCALE:F

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleTipPopup$CloseAnimatorListener;->this$0:Lcom/android/systemui/searcle/SearcleTipPopup;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/searcle/SearcleTipPopup;->hideImmediate()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
