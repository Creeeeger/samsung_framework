.class public final synthetic Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/plugins/omni/AssistStateManager;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/plugins/omni/AssistStateManager;Ljava/util/function/Consumer;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/plugins/omni/AssistStateManager;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/Consumer;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/plugins/omni/AssistStateManager;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/Consumer;

    .line 10
    .line 11
    check-cast p1, Landroid/app/appsearch/GlobalSearchSession;

    .line 12
    .line 13
    invoke-static {v0, p0, p1}, Lcom/android/systemui/plugins/omni/AssistStateManager;->$r8$lambda$yZKM7VlqkA7_dyZd2XuRyVElBLs(Lcom/android/systemui/plugins/omni/AssistStateManager;Ljava/util/function/Consumer;Landroid/app/appsearch/GlobalSearchSession;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/plugins/omni/AssistStateManager;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/Consumer;

    .line 20
    .line 21
    check-cast p1, Landroid/app/appsearch/AppSearchResult;

    .line 22
    .line 23
    invoke-static {v0, p0, p1}, Lcom/android/systemui/plugins/omni/AssistStateManager;->$r8$lambda$AKOqKJSAJh6fQv6GlSYa4LUKf4o(Lcom/android/systemui/plugins/omni/AssistStateManager;Ljava/util/function/Consumer;Landroid/app/appsearch/AppSearchResult;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
