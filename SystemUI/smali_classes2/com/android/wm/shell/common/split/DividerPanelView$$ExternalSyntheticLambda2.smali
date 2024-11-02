.class public final synthetic Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/split/DividerPanelView;

.field public final synthetic f$1:Lcom/airbnb/lottie/LottieTask;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/airbnb/lottie/LottieAnimationView;

.field public final synthetic f$4:Lcom/airbnb/lottie/LottieComposition;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/LottieTask;Lcom/android/wm/shell/common/split/DividerPanelView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/common/split/DividerPanelView;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda2;->f$1:Lcom/airbnb/lottie/LottieTask;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda2;->f$3:Lcom/airbnb/lottie/LottieAnimationView;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda2;->f$4:Lcom/airbnb/lottie/LottieComposition;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/common/split/DividerPanelView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda2;->f$1:Lcom/airbnb/lottie/LottieTask;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda2;->f$3:Lcom/airbnb/lottie/LottieAnimationView;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda2;->f$4:Lcom/airbnb/lottie/LottieComposition;

    .line 10
    .line 11
    sget v4, Lcom/android/wm/shell/common/split/DividerPanelView;->$r8$clinit:I

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v4, "createLottieTask: setComposition, lottieTask="

    .line 19
    .line 20
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v4, ", asset="

    .line 27
    .line 28
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v2, "DividerPanelView"

    .line 39
    .line 40
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :try_start_0
    const-class v0, Lcom/airbnb/lottie/LottieTask;

    .line 44
    .line 45
    const-string v2, "handler"

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/4 v2, 0x1

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 53
    .line 54
    .line 55
    new-instance v2, Landroid/os/Handler;

    .line 56
    .line 57
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    :goto_0
    invoke-virtual {v3, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method
