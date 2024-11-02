.class public final synthetic Lcom/android/wm/shell/windowdecor/TaskPositioner$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/windowdecor/TaskPositioner;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/TaskPositioner;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 2
    .line 3
    check-cast p1, Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mMultiTaskingDecor:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getCaptionVisibleHeight()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    sub-int/2addr v0, p0

    .line 23
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 24
    .line 25
    :cond_0
    return-void
.end method
