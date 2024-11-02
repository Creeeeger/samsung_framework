.class public abstract Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModelKt;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final EMPTY_DISABLED_DATA_ICON:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;

.field public static final EMPTY_DISABLED_DATA_ROAMING_ICON:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;

    .line 2
    .line 3
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;->DATA_ICON:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModelKt;->EMPTY_DISABLED_DATA_ICON:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;

    .line 10
    .line 11
    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;

    .line 12
    .line 13
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;->ROAMING_ICON:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;I)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModelKt;->EMPTY_DISABLED_DATA_ROAMING_ICON:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;

    .line 19
    .line 20
    return-void
.end method
