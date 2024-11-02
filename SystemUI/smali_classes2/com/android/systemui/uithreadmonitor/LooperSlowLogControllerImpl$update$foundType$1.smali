.class final Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$update$foundType$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$update$foundType$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$update$foundType$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$update$foundType$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$update$foundType$1;->INSTANCE:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$update$foundType$1;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;

    .line 2
    .line 3
    iget-wide v0, p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->dispatchTime:J

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long p0, v0, v2

    .line 8
    .line 9
    if-gtz p0, :cond_1

    .line 10
    .line 11
    iget-wide p0, p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$LogType;->deliveryTime:J

    .line 12
    .line 13
    cmp-long p0, p0, v2

    .line 14
    .line 15
    if-lez p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method
