.class public final synthetic Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$1$$ExternalSyntheticLambda0;->f$0:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$1$$ExternalSyntheticLambda0;->f$0:Z

    .line 2
    .line 3
    check-cast p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 4
    .line 5
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FULL_SCREEN:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-boolean p0, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsKeyguardShowing:Z

    .line 10
    .line 11
    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mPopupMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 16
    .line 17
    iget-boolean p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isRunning:Z

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    xor-int/lit8 p0, p0, 0x1

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;->setFreeformButtonEnabled(Z)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
