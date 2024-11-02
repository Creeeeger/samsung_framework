.class public final Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$onViewAttached$1$1$3$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$onViewAttached$1$1$3$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/Unit;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$onViewAttached$1$1$3$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;

    .line 4
    .line 5
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->access$updateSimTypes(Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->updateCarrierLogoVisibility()V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method
