.class public final synthetic Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/airbnb/lottie/LottieTask;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;Ljava/lang/String;Lcom/airbnb/lottie/LottieTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView$$ExternalSyntheticLambda0;->f$2:Lcom/airbnb/lottie/LottieTask;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/airbnb/lottie/LottieComposition;

    .line 2
    .line 3
    sget v0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;->$r8$clinit:I

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "createLottieTask: onResult, asset="

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v3, "WindowMenuAnimationView"

    .line 27
    .line 28
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;->mHandler:Landroid/os/Handler;

    .line 32
    .line 33
    new-instance v3, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView$$ExternalSyntheticLambda2;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView$$ExternalSyntheticLambda0;->f$2:Lcom/airbnb/lottie/LottieTask;

    .line 36
    .line 37
    invoke-direct {v3, p1, p0, v0, v2}, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView$$ExternalSyntheticLambda2;-><init>(Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/LottieTask;Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method
