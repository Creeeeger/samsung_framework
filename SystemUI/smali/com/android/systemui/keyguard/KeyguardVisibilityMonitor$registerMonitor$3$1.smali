.class public final Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$3$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/shade/ShadeExpansionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$3$1;->this$0:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 1

    .line 1
    sget v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$3$1;->this$0:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->panelLog(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;Ljava/lang/Integer;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->panelExpansionChangeEvent:Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    .line 10
    .line 11
    return-void
.end method
