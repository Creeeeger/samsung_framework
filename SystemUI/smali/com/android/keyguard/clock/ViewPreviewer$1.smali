.class public final Lcom/android/keyguard/clock/ViewPreviewer$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/clock/ViewPreviewer;

.field public final synthetic val$height:I

.field public final synthetic val$view:Landroid/view/View;

.field public final synthetic val$width:I


# direct methods
.method public constructor <init>(Lcom/android/keyguard/clock/ViewPreviewer;IILandroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/clock/ViewPreviewer$1;->this$0:Lcom/android/keyguard/clock/ViewPreviewer;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/keyguard/clock/ViewPreviewer$1;->val$width:I

    .line 4
    .line 5
    iput p3, p0, Lcom/android/keyguard/clock/ViewPreviewer$1;->val$height:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/keyguard/clock/ViewPreviewer$1;->val$view:Landroid/view/View;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/keyguard/clock/ViewPreviewer$1;->val$width:I

    .line 4
    .line 5
    iget v2, p0, Lcom/android/keyguard/clock/ViewPreviewer$1;->val$height:I

    .line 6
    .line 7
    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v3, Landroid/graphics/Canvas;

    .line 12
    .line 13
    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 14
    .line 15
    .line 16
    const/high16 v4, -0x1000000

    .line 17
    .line 18
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 19
    .line 20
    .line 21
    iget-object v4, p0, Lcom/android/keyguard/clock/ViewPreviewer$1;->this$0:Lcom/android/keyguard/clock/ViewPreviewer;

    .line 22
    .line 23
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/keyguard/clock/ViewPreviewer$1;->val$view:Landroid/view/View;

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    invoke-static {p0, v4}, Lcom/android/keyguard/clock/ViewPreviewer;->dispatchVisibilityAggregated(Landroid/view/View;Z)V

    .line 30
    .line 31
    .line 32
    const/high16 v4, 0x40000000    # 2.0f

    .line 33
    .line 34
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    invoke-virtual {p0, v5, v4}, Landroid/view/View;->measure(II)V

    .line 43
    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-virtual {p0, v4, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 50
    .line 51
    .line 52
    return-object v0
.end method
