.class public final Lcom/android/systemui/shade/SecPanelFoldHelper$screenRatioListener$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final INTENT_ACTION:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/shade/SecPanelFoldHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecPanelFoldHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelFoldHelper$screenRatioListener$1;->this$0:Lcom/android/systemui/shade/SecPanelFoldHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p1, "com.samsung.intent.action.SET_SCREEN_RATIO_VALUE"

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelFoldHelper$screenRatioListener$1;->INTENT_ACTION:Ljava/lang/String;

    .line 9
    .line 10
    new-instance p0, Landroid/content/IntentFilter;

    .line 11
    .line 12
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/shade/SecPanelFoldHelper$screenRatioListener$1;->INTENT_ACTION:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/systemui/shade/SecPanelFoldHelper$screenRatioListener$1;->INTENT_ACTION:Ljava/lang/String;

    .line 14
    .line 15
    const-string p2, "onReceive("

    .line 16
    .line 17
    const-string v0, ")"

    .line 18
    .line 19
    const-string v1, "SecPanelFoldHelper"

    .line 20
    .line 21
    invoke-static {p2, p1, v0, v1}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelFoldHelper$screenRatioListener$1;->this$0:Lcom/android/systemui/shade/SecPanelFoldHelper;

    .line 25
    .line 26
    sget p1, Lcom/android/systemui/shade/SecPanelFoldHelper;->$r8$clinit:I

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method
