.class public final Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$defaultDataListener$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/util/CarrierConfigTracker$DefaultDataSubscriptionChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$defaultDataListener$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDefaultSubscriptionChanged(I)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$defaultDataListener$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->carrierLogoVisibilityManager:Lcom/android/systemui/statusbar/phone/CarrierLogoVisibilityManager;

    .line 4
    .line 5
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput p1, v0, Lcom/android/systemui/statusbar/phone/CarrierLogoVisibilityManager;->defaultSubscriptionSlotId:I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CarrierLogoVisibilityManager;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    .line 15
    .line 16
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/CarrierLogoVisibilityManager;->featureName:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 17
    .line 18
    invoke-interface {v2, v3, p1, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/CarrierLogoVisibilityManager;->featureEnabled:Z

    .line 23
    .line 24
    iget v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLogoVisibilityManager;->defaultSubscriptionSlotId:I

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, "Default data subscription is changed to slot"

    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, " "

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, "="

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string v0, "CarrierLogoVisibilityManager"

    .line 57
    .line 58
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->updateCarrierLogoVisibility()V

    .line 62
    .line 63
    .line 64
    return-void
.end method
