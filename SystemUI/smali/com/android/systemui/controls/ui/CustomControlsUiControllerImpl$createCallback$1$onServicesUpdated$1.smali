.class public final Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $lastItems:Ljava/util/List;

.field public final synthetic $onResult:Lkotlin/jvm/functions/Function2;

.field public final synthetic $serviceInfos:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2;",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ui/ControlsSelectionItem;",
            ">;",
            "Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/controls/ControlsServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;->$onResult:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;->$lastItems:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;->$serviceInfos:Ljava/util/List;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;->$onResult:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;->$lastItems:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 6
    .line 7
    iget-object v3, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;->$serviceInfos:Ljava/util/List;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v2, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->context:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v2, p0}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->getListOfServices(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {v0, v1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-void
.end method
