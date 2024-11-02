.class public final Lcom/android/wm/shell/draganddrop/DropTargetView$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/draganddrop/DropTargetView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/draganddrop/DropTargetView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetView$2;->this$0:Lcom/android/wm/shell/draganddrop/DropTargetView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetView$2;->this$0:Lcom/android/wm/shell/draganddrop/DropTargetView;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    sget v0, Lcom/android/wm/shell/draganddrop/DropTargetView;->$r8$clinit:I

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/draganddrop/DropTargetView;->setBlurEffect(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
