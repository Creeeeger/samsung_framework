.class public final Lcom/android/systemui/animation/AnimatedDialog$start$dialogContentWithBackground$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $dialogContentWithBackground:Lcom/android/systemui/animation/LaunchableFrameLayout;

.field public final synthetic $window:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;Lcom/android/systemui/animation/LaunchableFrameLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/animation/AnimatedDialog$start$dialogContentWithBackground$2;->$window:Landroid/view/Window;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/animation/AnimatedDialog$start$dialogContentWithBackground$2;->$dialogContentWithBackground:Lcom/android/systemui/animation/LaunchableFrameLayout;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/animation/AnimatedDialog$start$dialogContentWithBackground$2;->$window:Landroid/view/Window;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 8
    .line 9
    const/4 p2, -0x1

    .line 10
    if-ne p1, p2, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/systemui/animation/AnimatedDialog$start$dialogContentWithBackground$2;->$window:Landroid/view/Window;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 19
    .line 20
    if-eq p1, p2, :cond_1

    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/animation/AnimatedDialog$start$dialogContentWithBackground$2;->$dialogContentWithBackground:Lcom/android/systemui/animation/LaunchableFrameLayout;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object p3, p0, Lcom/android/systemui/animation/AnimatedDialog$start$dialogContentWithBackground$2;->$window:Landroid/view/Window;

    .line 29
    .line 30
    invoke-virtual {p3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    iget p3, p3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 35
    .line 36
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 37
    .line 38
    iget-object p3, p0, Lcom/android/systemui/animation/AnimatedDialog$start$dialogContentWithBackground$2;->$window:Landroid/view/Window;

    .line 39
    .line 40
    invoke-virtual {p3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    iget p3, p3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 45
    .line 46
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 47
    .line 48
    iget-object p3, p0, Lcom/android/systemui/animation/AnimatedDialog$start$dialogContentWithBackground$2;->$dialogContentWithBackground:Lcom/android/systemui/animation/LaunchableFrameLayout;

    .line 49
    .line 50
    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/systemui/animation/AnimatedDialog$start$dialogContentWithBackground$2;->$window:Landroid/view/Window;

    .line 54
    .line 55
    invoke-virtual {p0, p2, p2}, Landroid/view/Window;->setLayout(II)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method
