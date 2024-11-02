.class public final Lcom/android/systemui/power/WirelessMisalignView$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/WirelessMisalignView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/WirelessMisalignView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/power/WirelessMisalignView$1;->this$0:Lcom/android/systemui/power/WirelessMisalignView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    const-string p1, "PowerUI.WirelessMisalignView"

    .line 2
    .line 3
    const-string v0, "button click : misalign view gone"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/systemui/power/WirelessMisalignView$1;->this$0:Lcom/android/systemui/power/WirelessMisalignView;

    .line 9
    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/android/systemui/power/WirelessMisalignView;->setWirelessMisalignViewVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/power/WirelessMisalignView$1;->this$0:Lcom/android/systemui/power/WirelessMisalignView;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/power/WirelessMisalignView;->mListener:Lcom/android/systemui/power/WirelessMisalignListener;

    .line 18
    .line 19
    check-cast p0, Lcom/android/systemui/power/PowerUI;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const-string p1, "PowerUI"

    .line 25
    .line 26
    const-string/jumbo v0, "onWirelessMisalignCompleted"

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->removeMisalignView()V

    .line 33
    .line 34
    .line 35
    return-void
.end method
