.class public final Lcom/android/systemui/volume/util/HandlerWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mainThreadHandler$delegate:Lkotlin/Lazy;

.field public final workerThread$delegate:Lkotlin/Lazy;

.field public final workerThreadHandler$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/systemui/volume/util/HandlerWrapper$workerThread$2;->INSTANCE:Lcom/android/systemui/volume/util/HandlerWrapper$workerThread$2;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/systemui/volume/util/HandlerWrapper;->workerThread$delegate:Lkotlin/Lazy;

    .line 11
    .line 12
    sget-object v0, Lcom/android/systemui/volume/util/HandlerWrapper$mainThreadHandler$2;->INSTANCE:Lcom/android/systemui/volume/util/HandlerWrapper$mainThreadHandler$2;

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/systemui/volume/util/HandlerWrapper;->mainThreadHandler$delegate:Lkotlin/Lazy;

    .line 19
    .line 20
    new-instance v0, Lcom/android/systemui/volume/util/HandlerWrapper$workerThreadHandler$2;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/android/systemui/volume/util/HandlerWrapper$workerThreadHandler$2;-><init>(Lcom/android/systemui/volume/util/HandlerWrapper;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/android/systemui/volume/util/HandlerWrapper;->workerThreadHandler$delegate:Lkotlin/Lazy;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final postDelayed(JLjava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/util/HandlerWrapper;->mainThreadHandler$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/os/Handler;

    .line 8
    .line 9
    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final postInBgThread(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/util/HandlerWrapper;->workerThreadHandler$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/os/Handler;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final remove(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/util/HandlerWrapper;->mainThreadHandler$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/os/Handler;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
