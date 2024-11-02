.class public final synthetic Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;

.field public final synthetic f$1:Lcom/airbnb/lottie/LottieTask;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/airbnb/lottie/LottieComposition;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/LottieTask;Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView$$ExternalSyntheticLambda2;->f$1:Lcom/airbnb/lottie/LottieTask;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView$$ExternalSyntheticLambda2;->f$3:Lcom/airbnb/lottie/LottieComposition;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView$$ExternalSyntheticLambda2;->f$1:Lcom/airbnb/lottie/LottieTask;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView$$ExternalSyntheticLambda2;->f$3:Lcom/airbnb/lottie/LottieComposition;

    .line 8
    .line 9
    sget v3, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;->$r8$clinit:I

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v4, "createLottieTask: setComposition, lottieTask="

    .line 17
    .line 18
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v4, ", asset="

    .line 25
    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v3, "WindowMenuAnimationView"

    .line 37
    .line 38
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :try_start_0
    const-class v2, Lcom/airbnb/lottie/LottieTask;

    .line 42
    .line 43
    const-string v3, "handler"

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const/4 v3, 0x1

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 51
    .line 52
    .line 53
    new-instance v3, Landroid/os/Handler;

    .line 54
    .line 55
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    :goto_0
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
