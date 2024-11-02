.class public final synthetic Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_1

    .line 7
    :pswitch_0
    check-cast p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 8
    .line 9
    iget-object p0, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->updateButtonColor()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getHandleView()Lcom/android/wm/shell/windowdecor/widget/HandleView;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/widget/HandleView;->updateHandleViewColor()V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void

    .line 27
    :pswitch_1
    check-cast p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->onDisplayAdded(Z)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :goto_1
    check-cast p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    iput-boolean p0, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsAdditionalDisplayAdded:Z

    .line 38
    .line 39
    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    iput-boolean p0, v0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsDisplayAdded:Z

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->setupAddDisplayButton(Z)V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 49
    .line 50
    invoke-virtual {p1, v0, p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
