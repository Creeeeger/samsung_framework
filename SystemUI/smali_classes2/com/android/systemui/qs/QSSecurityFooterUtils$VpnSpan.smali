.class public final Lcom/android/systemui/qs/QSSecurityFooterUtils$VpnSpan;
.super Landroid/text/style/ClickableSpan;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$VpnSpan;->this$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/android/systemui/qs/QSSecurityFooterUtils$VpnSpan;

    .line 2
    .line 3
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    const p0, 0x12b9b099

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v0, "android.settings.VPN_SETTINGS"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils$VpnSpan;->this$0:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    throw p0
.end method
