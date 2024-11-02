.class public final Lcom/android/systemui/qs/bar/MicMode$setClickListener$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $sendEvent:Lkotlin/jvm/functions/Function1;

.field public final synthetic this$0:Lcom/android/systemui/qs/bar/MicMode;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/MicMode;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/bar/MicMode;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/MicMode$setClickListener$1;->this$0:Lcom/android/systemui/qs/bar/MicMode;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/qs/bar/MicMode$setClickListener$1;->$sendEvent:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    const-string p1, "MicMode"

    .line 2
    .line 3
    const-string v0, "onClicked"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MicMode$setClickListener$1;->this$0:Lcom/android/systemui/qs/bar/MicMode;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/android/systemui/qs/bar/MicMode;->qsPanelControllerLazy:Ldagger/Lazy;

    .line 11
    .line 12
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/android/systemui/qs/SecQSPanelController;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MicMode$setClickListener$1;->this$0:Lcom/android/systemui/qs/bar/MicMode;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/systemui/qs/bar/MicMode;->micModeDetailAdapter:Lcom/android/systemui/qs/bar/MicModeDetailAdapter;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v1, Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-direct {v1, v2}, Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object v0, v1, Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->showDetail(Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;Z)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MicMode$setClickListener$1;->$sendEvent:Lkotlin/jvm/functions/Function1;

    .line 38
    .line 39
    const-string p1, "QPPE1029"

    .line 40
    .line 41
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    return-void
.end method
