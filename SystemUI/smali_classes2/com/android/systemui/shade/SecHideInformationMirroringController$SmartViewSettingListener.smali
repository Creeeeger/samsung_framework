.class public final Lcom/android/systemui/shade/SecHideInformationMirroringController$SmartViewSettingListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/SecHideInformationMirroringController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecHideInformationMirroringController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/SecHideInformationMirroringController$SmartViewSettingListener;->this$0:Lcom/android/systemui/shade/SecHideInformationMirroringController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/android/systemui/shade/SecHideInformationMirroringController;->access$getSettingsHelper$p(Lcom/android/systemui/shade/SecHideInformationMirroringController;)Lcom/android/systemui/util/SettingsHelper;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string/jumbo v0, "smart_view_show_notification_on"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    filled-new-array {v0}, [Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 0

    .line 1
    const-string p1, "onChanged()"

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/shade/SecHideInformationMirroringController$SmartViewSettingListener;->this$0:Lcom/android/systemui/shade/SecHideInformationMirroringController;

    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/android/systemui/shade/SecHideInformationMirroringController;->access$printLogLine(Lcom/android/systemui/shade/SecHideInformationMirroringController;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/android/systemui/shade/SecHideInformationMirroringController;->access$handleHideInformationMirroringWindowFlag(Lcom/android/systemui/shade/SecHideInformationMirroringController;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
