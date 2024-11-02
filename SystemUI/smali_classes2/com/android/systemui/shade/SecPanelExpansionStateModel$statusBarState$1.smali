.class public final Lcom/android/systemui/shade/SecPanelExpansionStateModel$statusBarState$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/SecPanelExpansionStateModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecPanelExpansionStateModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel$statusBarState$1;->this$0:Lcom/android/systemui/shade/SecPanelExpansionStateModel;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel$statusBarState$1;->this$0:Lcom/android/systemui/shade/SecPanelExpansionStateModel;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, " @ RUN updatePanelOpenState(KEYGUARD > SHADE) "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "SecPanelExpansionStateModel"

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel$statusBarState$1;->this$0:Lcom/android/systemui/shade/SecPanelExpansionStateModel;

    .line 23
    .line 24
    sget v0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->$r8$clinit:I

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->updatePanelOpenState()V

    .line 27
    .line 28
    .line 29
    return-void
.end method
