.class public final Lcom/android/systemui/statusbar/pipeline/carrier/FakeCarrierInfraMediatorImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;


# instance fields
.field public final carrierInfraMediatorImpl:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/carrier/FakeCarrierInfraMediatorImpl;->carrierInfraMediatorImpl:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final varargs get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p3}, Lkotlin/collections/ArraysKt___ArraysKt;->getOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/carrier/FakeCarrierInfraMediatorImpl;->carrierInfraMediatorImpl:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final varargs isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/carrier/FakeCarrierInfraMediatorImpl;->carrierInfraMediatorImpl:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;

    .line 2
    .line 3
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final varargs set(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lkotlin/collections/ArraysKt___ArraysKt;->getOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/carrier/FakeCarrierInfraMediatorImpl;->carrierInfraMediatorImpl:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->set(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
