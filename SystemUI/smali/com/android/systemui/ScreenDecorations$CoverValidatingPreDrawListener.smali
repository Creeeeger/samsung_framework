.class public final Lcom/android/systemui/ScreenDecorations$CoverValidatingPreDrawListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final mView:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$CoverValidatingPreDrawListener;->this$0:Lcom/android/systemui/ScreenDecorations;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/ScreenDecorations$CoverValidatingPreDrawListener;->mView:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$CoverValidatingPreDrawListener;->this$0:Lcom/android/systemui/ScreenDecorations;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/ScreenDecorations;->mCoverWindowContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$CoverValidatingPreDrawListener;->this$0:Lcom/android/systemui/ScreenDecorations;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/systemui/ScreenDecorations;->mCoverDisplayInfo:Landroid/view/DisplayInfo;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$CoverValidatingPreDrawListener;->this$0:Lcom/android/systemui/ScreenDecorations;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mCoverDisplayInfo:Landroid/view/DisplayInfo;

    .line 19
    .line 20
    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 21
    .line 22
    iget v2, v0, Lcom/android/systemui/ScreenDecorations;->mCoverRotation:I

    .line 23
    .line 24
    if-eq v1, v2, :cond_0

    .line 25
    .line 26
    iget-boolean v0, v0, Lcom/android/systemui/ScreenDecorations;->mCoverPendingConfigChange:Z

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$CoverValidatingPreDrawListener;->mView:Landroid/view/View;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return p0

    .line 37
    :cond_0
    const/4 p0, 0x1

    .line 38
    return p0
.end method
