.class public final Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$4;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    xor-int/lit8 p1, p2, 0x1

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$4;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p0, p1, v0}, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->-$$Nest$msetBrightness(Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 14
    .line 15
    .line 16
    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    sget-object p0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    const-wide/16 p1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-wide/16 p1, 0x0

    .line 28
    .line 29
    :goto_0
    const-string v0, "QPDS2027"

    .line 30
    .line 31
    invoke-static {p1, p2, p0, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(JLjava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method
