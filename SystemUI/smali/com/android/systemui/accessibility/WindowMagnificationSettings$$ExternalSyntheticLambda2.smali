.class public final synthetic Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

.field public final synthetic f$1:F

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda2;->f$1:F

    .line 7
    .line 8
    iput p3, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda2;->f$2:F

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    .line 2
    .line 3
    iget p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda2;->f$1:F

    .line 4
    .line 5
    iget p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda2;->f$2:F

    .line 6
    .line 7
    iget-object v0, p1, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 8
    .line 9
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 10
    .line 11
    int-to-float v1, v1

    .line 12
    add-float/2addr v1, p2

    .line 13
    float-to-int p2, v1

    .line 14
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 15
    .line 16
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 17
    .line 18
    int-to-float v1, v1

    .line 19
    add-float/2addr v1, p0

    .line 20
    float-to-int p0, v1

    .line 21
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 22
    .line 23
    iget-boolean p0, p1, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mIsVisible:Z

    .line 24
    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    iget-object p0, p1, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mDraggableWindowBounds:Landroid/graphics/Rect;

    .line 28
    .line 29
    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 30
    .line 31
    iget p0, p0, Landroid/graphics/Rect;->right:I

    .line 32
    .line 33
    invoke-static {p2, v1, p0}, Landroid/util/MathUtils;->constrain(III)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 38
    .line 39
    iget p0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 40
    .line 41
    iget-object p2, p1, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mDraggableWindowBounds:Landroid/graphics/Rect;

    .line 42
    .line 43
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 44
    .line 45
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 46
    .line 47
    invoke-static {p0, v1, p2}, Landroid/util/MathUtils;->constrain(III)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 52
    .line 53
    iget-object p0, p1, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    .line 54
    .line 55
    iget-object p1, p1, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mWindowManager:Landroid/view/WindowManager;

    .line 56
    .line 57
    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void
.end method
