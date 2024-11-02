.class public final Lcom/android/systemui/util/TouchDelegateUtil$expandTouchAreaAsParent$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $parentView:Landroid/view/View;

.field public final synthetic $targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/util/TouchDelegateUtil$expandTouchAreaAsParent$1;->$targetView:Landroid/view/View;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/util/TouchDelegateUtil$expandTouchAreaAsParent$1;->$parentView:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/util/TouchDelegateUtil$expandTouchAreaAsParent$1;->$targetView:Landroid/view/View;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/systemui/util/TouchDelegateUtil$expandTouchAreaAsParent$1;->$parentView:Landroid/view/View;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 15
    .line 16
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/systemui/util/TouchDelegateUtil$expandTouchAreaAsParent$1;->$parentView:Landroid/view/View;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/systemui/util/TouchDelegateUtil$expandTouchAreaAsParent$1;->$targetView:Landroid/view/View;

    .line 33
    .line 34
    new-instance v2, Landroid/view/TouchDelegate;

    .line 35
    .line 36
    invoke-direct {v2, v0, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
