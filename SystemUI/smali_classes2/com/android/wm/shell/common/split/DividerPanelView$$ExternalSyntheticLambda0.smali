.class public final synthetic Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/split/DividerPanelView;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/airbnb/lottie/LottieTask;

.field public final synthetic f$3:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/split/DividerPanelView;Ljava/lang/String;Lcom/airbnb/lottie/LottieTask;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/split/DividerPanelView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda0;->f$2:Lcom/airbnb/lottie/LottieTask;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda0;->f$3:Lcom/airbnb/lottie/LottieAnimationView;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v5, p0, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v3, p0, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda0;->f$2:Lcom/airbnb/lottie/LottieTask;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda0;->f$3:Lcom/airbnb/lottie/LottieAnimationView;

    .line 6
    .line 7
    move-object v2, p1

    .line 8
    check-cast v2, Lcom/airbnb/lottie/LottieComposition;

    .line 9
    .line 10
    sget p1, Lcom/android/wm/shell/common/split/DividerPanelView;->$r8$clinit:I

    .line 11
    .line 12
    iget-object v4, p0, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/split/DividerPanelView;

    .line 13
    .line 14
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string p1, "createLottieTask: onResult, asset="

    .line 20
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string p1, "DividerPanelView"

    .line 32
    .line 33
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object p0, v4, Lcom/android/wm/shell/common/split/DividerPanelView;->mHandler:Landroid/os/Handler;

    .line 37
    .line 38
    new-instance p1, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda2;

    .line 39
    .line 40
    move-object v0, p1

    .line 41
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda2;-><init>(Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/LottieTask;Lcom/android/wm/shell/common/split/DividerPanelView;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    return-void
.end method
