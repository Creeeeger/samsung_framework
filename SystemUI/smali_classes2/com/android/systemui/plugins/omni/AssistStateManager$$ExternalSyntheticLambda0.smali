.class public final synthetic Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/plugins/omni/AssistStateManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/plugins/omni/AssistStateManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/plugins/omni/AssistStateManager;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/plugins/omni/AssistStateManager;

    .line 8
    .line 9
    check-cast p1, Landroid/content/Intent;

    .line 10
    .line 11
    invoke-static {p0, p1}, Lcom/android/systemui/plugins/omni/AssistStateManager;->$r8$lambda$nhD7AMvxZ_y8zgsGHlZZYTM2qjs(Lcom/android/systemui/plugins/omni/AssistStateManager;Landroid/content/Intent;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/plugins/omni/AssistStateManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/plugins/omni/AssistStateManager;

    .line 16
    .line 17
    check-cast p1, Landroid/app/appsearch/GlobalSearchSession;

    .line 18
    .line 19
    invoke-static {p0, p1}, Lcom/android/systemui/plugins/omni/AssistStateManager;->$r8$lambda$WbbSkYXr1WzVSXCz07fvbw6A3Yo(Lcom/android/systemui/plugins/omni/AssistStateManager;Landroid/app/appsearch/GlobalSearchSession;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
