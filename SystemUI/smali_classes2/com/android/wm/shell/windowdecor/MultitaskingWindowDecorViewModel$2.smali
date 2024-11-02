.class public final Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$2;
.super Lcom/samsung/android/multiwindow/IDexTransientCaptionDelayListener$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$2;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IDexTransientCaptionDelayListener$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDelayChanged(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$2;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$2$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$2$$ExternalSyntheticLambda0;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
