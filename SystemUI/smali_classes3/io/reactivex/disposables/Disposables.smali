.class public final Lio/reactivex/disposables/Disposables;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 5
    .line 6
    const-string v0, "No instances!"

    .line 7
    .line 8
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p0
.end method

.method public static fromRunnable(Lio/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker$AppendToQueueTask;)Lio/reactivex/disposables/Disposable;
    .locals 1

    .line 1
    sget v0, Lio/reactivex/internal/functions/ObjectHelper;->$r8$clinit:I

    .line 2
    .line 3
    new-instance v0, Lio/reactivex/disposables/RunnableDisposable;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lio/reactivex/disposables/RunnableDisposable;-><init>(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
