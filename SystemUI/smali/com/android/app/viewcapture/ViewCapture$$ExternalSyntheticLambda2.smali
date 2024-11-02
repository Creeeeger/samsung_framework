.class public final synthetic Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/app/viewcapture/ViewCapture;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/app/viewcapture/ViewCapture;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda2;->f$0:Lcom/android/app/viewcapture/ViewCapture;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda2;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda2;->f$0:Lcom/android/app/viewcapture/ViewCapture;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, v2}, Lcom/android/app/viewcapture/ViewCapture$ViewRef;-><init>(I)V

    .line 12
    .line 13
    .line 14
    move-object v4, v1

    .line 15
    move v3, v2

    .line 16
    :goto_0
    if-ge v3, p0, :cond_0

    .line 17
    .line 18
    new-instance v5, Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    .line 19
    .line 20
    invoke-direct {v5, v2}, Lcom/android/app/viewcapture/ViewCapture$ViewRef;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iput-object v5, v4, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->next:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    .line 24
    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    move-object v4, v5

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda8;

    .line 30
    .line 31
    invoke-direct {p0, v0, v1, v4, v2}, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;Lcom/android/app/viewcapture/ViewCapture$ViewRef;Lcom/android/app/viewcapture/ViewCapture$ViewRef;I)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lcom/android/app/viewcapture/ViewCapture;->MAIN_EXECUTOR:Lcom/android/app/viewcapture/LooperExecutor;

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Lcom/android/app/viewcapture/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
