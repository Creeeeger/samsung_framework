.class public final Lcom/android/systemui/qs/SecQSPanelController$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/SecQSPanelController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecQSPanelController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSPanelController$1;->this$0:Lcom/android/systemui/qs/SecQSPanelController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x1

    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelController$1;->this$0:Lcom/android/systemui/qs/SecQSPanelController;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 11
    .line 12
    const/16 p1, 0xf

    .line 13
    .line 14
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method
