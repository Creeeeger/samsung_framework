.class public final Lcom/android/systemui/log/SecPanelLoggerImpl$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;


# instance fields
.field public final synthetic $panelExpansionStateNotifier:Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

.field public final synthetic this$0:Lcom/android/systemui/log/SecPanelLoggerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;Lcom/android/systemui/log/SecPanelLoggerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/log/SecPanelLoggerImpl$1;->$panelExpansionStateNotifier:Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/log/SecPanelLoggerImpl$1;->this$0:Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onBootAnimationFinished()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/log/SecPanelLoggerImpl$1$onBootAnimationFinished$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/log/SecPanelLoggerImpl$1;->this$0:Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/systemui/log/SecPanelLoggerImpl$1$onBootAnimationFinished$1;-><init>(Lcom/android/systemui/log/SecPanelLoggerImpl;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/log/SecPanelLoggerImpl$1;->$panelExpansionStateNotifier:Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;->registerTicket(Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$SecPanelExpansionStateTicket;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
