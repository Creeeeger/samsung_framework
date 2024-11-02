.class public final synthetic Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/SystemUIInitializer;

.field public final synthetic f$1:Lcom/android/systemui/dagger/WMComponent$Builder;

.field public final synthetic f$2:Landroid/os/HandlerThread;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/SystemUIInitializer;Lcom/android/systemui/dagger/WMComponent$Builder;Landroid/os/HandlerThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/SystemUIInitializer;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticLambda6;->f$1:Lcom/android/systemui/dagger/WMComponent$Builder;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticLambda6;->f$2:Landroid/os/HandlerThread;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/SystemUIInitializer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticLambda6;->f$1:Lcom/android/systemui/dagger/WMComponent$Builder;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticLambda6;->f$2:Landroid/os/HandlerThread;

    .line 6
    .line 7
    invoke-static {v0, v1, p0}, Lcom/android/systemui/SystemUIInitializer;->$r8$lambda$fM3ZYlHSXv2LZLPIQt0xKKN2evU(Lcom/android/systemui/SystemUIInitializer;Lcom/android/systemui/dagger/WMComponent$Builder;Landroid/os/HandlerThread;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
