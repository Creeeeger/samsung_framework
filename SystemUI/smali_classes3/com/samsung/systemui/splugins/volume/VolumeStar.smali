.class public interface abstract Lcom/samsung/systemui/splugins/volume/VolumeStar;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPlugin;


# annotations
.annotation runtime Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.volume.PLUGIN"
    version = 0xbb8
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/volume/VolumeStar$Companion;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.volume.PLUGIN"

.field public static final Companion:Lcom/samsung/systemui/splugins/volume/VolumeStar$Companion;

.field public static final MAJOR_VERSION:I = 0x3

.field public static final MINOR_VERSION:I = 0x0

.field public static final VERSION:I = 0xbb8


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStar$Companion;->$$INSTANCE:Lcom/samsung/systemui/splugins/volume/VolumeStar$Companion;

    .line 2
    .line 3
    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStar;->Companion:Lcom/samsung/systemui/splugins/volume/VolumeStar$Companion;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract init(Landroid/content/Context;Landroid/content/Context;Lcom/samsung/systemui/splugins/volume/VolumeStarDependency;)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
