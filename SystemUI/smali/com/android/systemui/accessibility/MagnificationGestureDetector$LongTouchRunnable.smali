.class public final Lcom/android/systemui/accessibility/MagnificationGestureDetector$LongTouchRunnable;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mView:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/accessibility/MagnificationGestureDetector;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/MagnificationGestureDetector;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector$LongTouchRunnable;->this$0:Lcom/android/systemui/accessibility/MagnificationGestureDetector;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector$LongTouchRunnable;->mView:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector$LongTouchRunnable;->mView:Landroid/view/View;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector$LongTouchRunnable;->this$0:Lcom/android/systemui/accessibility/MagnificationGestureDetector;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector$LongTouchRunnable;->this$0:Lcom/android/systemui/accessibility/MagnificationGestureDetector;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mOnGestureListener:Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector$LongTouchRunnable;->mView:Landroid/view/View;

    .line 21
    .line 22
    invoke-interface {v0, p0}, Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;->onLongPressed(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
