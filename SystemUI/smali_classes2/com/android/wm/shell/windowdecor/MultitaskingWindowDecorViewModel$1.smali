.class public final Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/sysui/KeyguardChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$1;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onKeyguardVisibilityChanged(ZZ)V
    .locals 0

    .line 1
    new-instance p2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$1$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {p2, p1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$1$$ExternalSyntheticLambda0;-><init>(Z)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$1;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->forAllDecorations(Ljava/util/function/Consumer;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
