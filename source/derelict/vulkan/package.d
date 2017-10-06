/*

Boost Software License - Version 1.0 - August 17th, 2003

Permission is hereby granted, free of charge, to any person or organization
obtaining a copy of the software and accompanying documentation covered by
this license (the "Software") to use, reproduce, display, distribute,
execute, and transmit the Software, and to prepare derivative works of the
Software, and to permit third-parties to whom the Software is furnished to
do so, all subject to the following:

The copyright notices in the Software and this entire statement, including
the above license grant, this restriction and the following disclaimer,
must be included in all copies of the Software, in whole or in part, and
all derivative works of the Software, unless such copies or derivative
works are solely in the form of machine-executable object code generated by
a source language processor.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT
SHALL THE COPYRIGHT HOLDERS OR ANYONE DISTRIBUTING THE SOFTWARE BE LIABLE
FOR ANY DAMAGES OR OTHER LIABILITY, WHETHER IN CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.

*/
module derelict.vulkan;

public {
	import derelict.vulkan.system;
	import derelict.vulkan.types;
	import derelict.vulkan.functions;
}

private {
	import derelict.util.loader;
	import derelict.util.system;
}

static if (libNames.length == 0) {
  pragma(msg, "Library names don't specified for this system."
            , " Please, specify it on library loading. e.g:\n"
            , "DerelictVulkan.load(\"libvulkan.so\");");
}

class DerelictVulkanLoader : SharedLibLoader {
	protected {
		override void loadSymbols() {
			bindFunc(cast(void**)&vkAcquireNextImageKHR, "vkAcquireNextImageKHR");
			bindFunc(cast(void**)&vkAllocateCommandBuffers, "vkAllocateCommandBuffers");
			bindFunc(cast(void**)&vkAllocateDescriptorSets, "vkAllocateDescriptorSets");
			bindFunc(cast(void**)&vkAllocateMemory, "vkAllocateMemory");
			bindFunc(cast(void**)&vkBeginCommandBuffer, "vkBeginCommandBuffer");
			bindFunc(cast(void**)&vkBindBufferMemory, "vkBindBufferMemory");
			bindFunc(cast(void**)&vkBindImageMemory, "vkBindImageMemory");
			bindFunc(cast(void**)&vkCmdBeginQuery, "vkCmdBeginQuery");
			bindFunc(cast(void**)&vkCmdBeginRenderPass, "vkCmdBeginRenderPass");
			bindFunc(cast(void**)&vkCmdBindDescriptorSets, "vkCmdBindDescriptorSets");
			bindFunc(cast(void**)&vkCmdBindIndexBuffer, "vkCmdBindIndexBuffer");
			bindFunc(cast(void**)&vkCmdBindPipeline, "vkCmdBindPipeline");
			bindFunc(cast(void**)&vkCmdBindVertexBuffers, "vkCmdBindVertexBuffers");
			bindFunc(cast(void**)&vkCmdBlitImage, "vkCmdBlitImage");
			bindFunc(cast(void**)&vkCmdClearAttachments, "vkCmdClearAttachments");
			bindFunc(cast(void**)&vkCmdClearColorImage, "vkCmdClearColorImage");
			bindFunc(cast(void**)&vkCmdClearDepthStencilImage, "vkCmdClearDepthStencilImage");
			bindFunc(cast(void**)&vkCmdCopyBuffer, "vkCmdCopyBuffer");
			bindFunc(cast(void**)&vkCmdCopyBufferToImage, "vkCmdCopyBufferToImage");
			bindFunc(cast(void**)&vkCmdCopyImage, "vkCmdCopyImage");
			bindFunc(cast(void**)&vkCmdCopyImageToBuffer, "vkCmdCopyImageToBuffer");
			bindFunc(cast(void**)&vkCmdCopyQueryPoolResults, "vkCmdCopyQueryPoolResults");
			bindFunc(cast(void**)&vkCmdDispatch, "vkCmdDispatch");
			bindFunc(cast(void**)&vkCmdDispatchIndirect, "vkCmdDispatchIndirect");
			bindFunc(cast(void**)&vkCmdDraw, "vkCmdDraw");
			bindFunc(cast(void**)&vkCmdDrawIndexed, "vkCmdDrawIndexed");
			bindFunc(cast(void**)&vkCmdDrawIndexedIndirect, "vkCmdDrawIndexedIndirect");
			bindFunc(cast(void**)&vkCmdDrawIndirect, "vkCmdDrawIndirect");
			bindFunc(cast(void**)&vkCmdEndQuery, "vkCmdEndQuery");
			bindFunc(cast(void**)&vkCmdEndRenderPass, "vkCmdEndRenderPass");
			bindFunc(cast(void**)&vkCmdExecuteCommands, "vkCmdExecuteCommands");
			bindFunc(cast(void**)&vkCmdFillBuffer, "vkCmdFillBuffer");
			bindFunc(cast(void**)&vkCmdNextSubpass, "vkCmdNextSubpass");
			bindFunc(cast(void**)&vkCmdPipelineBarrier, "vkCmdPipelineBarrier");
			bindFunc(cast(void**)&vkCmdPushConstants, "vkCmdPushConstants");
			bindFunc(cast(void**)&vkCmdResetEvent, "vkCmdResetEvent");
			bindFunc(cast(void**)&vkCmdResetQueryPool, "vkCmdResetQueryPool");
			bindFunc(cast(void**)&vkCmdResolveImage, "vkCmdResolveImage");
			bindFunc(cast(void**)&vkCmdSetBlendConstants, "vkCmdSetBlendConstants");
			bindFunc(cast(void**)&vkCmdSetDepthBias, "vkCmdSetDepthBias");
			bindFunc(cast(void**)&vkCmdSetDepthBounds, "vkCmdSetDepthBounds");
			bindFunc(cast(void**)&vkCmdSetEvent, "vkCmdSetEvent");
			bindFunc(cast(void**)&vkCmdSetLineWidth, "vkCmdSetLineWidth");
			bindFunc(cast(void**)&vkCmdSetScissor, "vkCmdSetScissor");
			bindFunc(cast(void**)&vkCmdSetStencilCompareMask, "vkCmdSetStencilCompareMask");
			bindFunc(cast(void**)&vkCmdSetStencilReference, "vkCmdSetStencilReference");
			bindFunc(cast(void**)&vkCmdSetStencilWriteMask, "vkCmdSetStencilWriteMask");
			bindFunc(cast(void**)&vkCmdSetViewport, "vkCmdSetViewport");
			bindFunc(cast(void**)&vkCmdUpdateBuffer, "vkCmdUpdateBuffer");
			bindFunc(cast(void**)&vkCmdWaitEvents, "vkCmdWaitEvents");
			bindFunc(cast(void**)&vkCmdWriteTimestamp, "vkCmdWriteTimestamp");
			bindFunc(cast(void**)&vkCreateBuffer, "vkCreateBuffer");
			bindFunc(cast(void**)&vkCreateBufferView, "vkCreateBufferView");
			bindFunc(cast(void**)&vkCreateCommandPool, "vkCreateCommandPool");
			bindFunc(cast(void**)&vkCreateComputePipelines, "vkCreateComputePipelines");
			bindFunc(cast(void**)&vkCreateDescriptorPool, "vkCreateDescriptorPool");
			bindFunc(cast(void**)&vkCreateDescriptorSetLayout, "vkCreateDescriptorSetLayout");
			bindFunc(cast(void**)&vkCreateDevice, "vkCreateDevice");
			bindFunc(cast(void**)&vkCreateEvent, "vkCreateEvent");
			bindFunc(cast(void**)&vkCreateFence, "vkCreateFence");
			bindFunc(cast(void**)&vkCreateFramebuffer, "vkCreateFramebuffer");
			bindFunc(cast(void**)&vkCreateGraphicsPipelines, "vkCreateGraphicsPipelines");
			bindFunc(cast(void**)&vkCreateImage, "vkCreateImage");
			bindFunc(cast(void**)&vkCreateImageView, "vkCreateImageView");
			bindFunc(cast(void**)&vkCreateInstance, "vkCreateInstance");
			bindFunc(cast(void**)&vkCreatePipelineCache, "vkCreatePipelineCache");
			bindFunc(cast(void**)&vkCreatePipelineLayout, "vkCreatePipelineLayout");
			bindFunc(cast(void**)&vkCreateQueryPool, "vkCreateQueryPool");
			bindFunc(cast(void**)&vkCreateRenderPass, "vkCreateRenderPass");
			bindFunc(cast(void**)&vkCreateSampler, "vkCreateSampler");
			bindFunc(cast(void**)&vkCreateSemaphore, "vkCreateSemaphore");
			bindFunc(cast(void**)&vkCreateShaderModule, "vkCreateShaderModule");
			bindFunc(cast(void**)&vkCreateSwapchainKHR, "vkCreateSwapchainKHR");
			bindFunc(cast(void**)&vkDestroyBuffer, "vkDestroyBuffer");
			bindFunc(cast(void**)&vkDestroyBufferView, "vkDestroyBufferView");
			bindFunc(cast(void**)&vkDestroyCommandPool, "vkDestroyCommandPool");
			bindFunc(cast(void**)&vkDestroyDescriptorPool, "vkDestroyDescriptorPool");
			bindFunc(cast(void**)&vkDestroyDescriptorSetLayout, "vkDestroyDescriptorSetLayout");
			bindFunc(cast(void**)&vkDestroyDevice, "vkDestroyDevice");
			bindFunc(cast(void**)&vkDestroyEvent, "vkDestroyEvent");
			bindFunc(cast(void**)&vkDestroyFence, "vkDestroyFence");
			bindFunc(cast(void**)&vkDestroyFramebuffer, "vkDestroyFramebuffer");
			bindFunc(cast(void**)&vkDestroyImage, "vkDestroyImage");
			bindFunc(cast(void**)&vkDestroyImageView, "vkDestroyImageView");
			bindFunc(cast(void**)&vkDestroyInstance, "vkDestroyInstance");
			bindFunc(cast(void**)&vkDestroyPipeline, "vkDestroyPipeline");
			bindFunc(cast(void**)&vkDestroyPipelineCache, "vkDestroyPipelineCache");
			bindFunc(cast(void**)&vkDestroyPipelineLayout, "vkDestroyPipelineLayout");
			bindFunc(cast(void**)&vkDestroyQueryPool, "vkDestroyQueryPool");
			bindFunc(cast(void**)&vkDestroyRenderPass, "vkDestroyRenderPass");
			bindFunc(cast(void**)&vkDestroySampler, "vkDestroySampler");
			bindFunc(cast(void**)&vkDestroySemaphore, "vkDestroySemaphore");
			bindFunc(cast(void**)&vkDestroyShaderModule, "vkDestroyShaderModule");
			bindFunc(cast(void**)&vkDestroySurfaceKHR, "vkDestroySurfaceKHR");
			bindFunc(cast(void**)&vkDestroySwapchainKHR, "vkDestroySwapchainKHR");
			bindFunc(cast(void**)&vkDeviceWaitIdle, "vkDeviceWaitIdle");
			bindFunc(cast(void**)&vkEndCommandBuffer, "vkEndCommandBuffer");
			bindFunc(cast(void**)&vkEnumerateDeviceExtensionProperties, "vkEnumerateDeviceExtensionProperties");
			bindFunc(cast(void**)&vkEnumerateDeviceLayerProperties, "vkEnumerateDeviceLayerProperties");
			bindFunc(cast(void**)&vkEnumerateInstanceExtensionProperties, "vkEnumerateInstanceExtensionProperties");
			bindFunc(cast(void**)&vkEnumerateInstanceLayerProperties, "vkEnumerateInstanceLayerProperties");
			bindFunc(cast(void**)&vkEnumeratePhysicalDevices, "vkEnumeratePhysicalDevices");
			bindFunc(cast(void**)&vkFlushMappedMemoryRanges, "vkFlushMappedMemoryRanges");
			bindFunc(cast(void**)&vkFreeCommandBuffers, "vkFreeCommandBuffers");
			bindFunc(cast(void**)&vkFreeDescriptorSets, "vkFreeDescriptorSets");
			bindFunc(cast(void**)&vkFreeMemory, "vkFreeMemory");
			bindFunc(cast(void**)&vkGetBufferMemoryRequirements, "vkGetBufferMemoryRequirements");
			bindFunc(cast(void**)&vkGetDeviceMemoryCommitment, "vkGetDeviceMemoryCommitment");
			bindFunc(cast(void**)&vkGetDeviceProcAddr, "vkGetDeviceProcAddr");
			bindFunc(cast(void**)&vkGetDeviceQueue, "vkGetDeviceQueue");
			bindFunc(cast(void**)&vkGetEventStatus, "vkGetEventStatus");
			bindFunc(cast(void**)&vkGetFenceStatus, "vkGetFenceStatus");
			bindFunc(cast(void**)&vkGetImageMemoryRequirements, "vkGetImageMemoryRequirements");
			bindFunc(cast(void**)&vkGetImageSparseMemoryRequirements, "vkGetImageSparseMemoryRequirements");
			bindFunc(cast(void**)&vkGetImageSubresourceLayout, "vkGetImageSubresourceLayout");
			bindFunc(cast(void**)&vkGetInstanceProcAddr, "vkGetInstanceProcAddr");
			bindFunc(cast(void**)&vkGetPhysicalDeviceFeatures, "vkGetPhysicalDeviceFeatures");
			bindFunc(cast(void**)&vkGetPhysicalDeviceFormatProperties, "vkGetPhysicalDeviceFormatProperties");
			bindFunc(cast(void**)&vkGetPhysicalDeviceImageFormatProperties, "vkGetPhysicalDeviceImageFormatProperties");
			bindFunc(cast(void**)&vkGetPhysicalDeviceMemoryProperties, "vkGetPhysicalDeviceMemoryProperties");
			bindFunc(cast(void**)&vkGetPhysicalDeviceProperties, "vkGetPhysicalDeviceProperties");
			bindFunc(cast(void**)&vkGetPhysicalDeviceQueueFamilyProperties, "vkGetPhysicalDeviceQueueFamilyProperties");
			bindFunc(cast(void**)&vkGetPhysicalDeviceSparseImageFormatProperties, "vkGetPhysicalDeviceSparseImageFormatProperties");
			bindFunc(cast(void**)&vkGetPhysicalDeviceSurfaceCapabilitiesKHR, "vkGetPhysicalDeviceSurfaceCapabilitiesKHR");
			bindFunc(cast(void**)&vkGetPhysicalDeviceSurfaceFormatsKHR, "vkGetPhysicalDeviceSurfaceFormatsKHR");
			bindFunc(cast(void**)&vkGetPhysicalDeviceSurfacePresentModesKHR, "vkGetPhysicalDeviceSurfacePresentModesKHR");
			bindFunc(cast(void**)&vkGetPhysicalDeviceSurfaceSupportKHR, "vkGetPhysicalDeviceSurfaceSupportKHR");
			bindFunc(cast(void**)&vkGetPipelineCacheData, "vkGetPipelineCacheData");
			bindFunc(cast(void**)&vkGetQueryPoolResults, "vkGetQueryPoolResults");
			bindFunc(cast(void**)&vkGetRenderAreaGranularity, "vkGetRenderAreaGranularity");
			bindFunc(cast(void**)&vkGetSwapchainImagesKHR, "vkGetSwapchainImagesKHR");
			bindFunc(cast(void**)&vkInvalidateMappedMemoryRanges, "vkInvalidateMappedMemoryRanges");
			bindFunc(cast(void**)&vkMapMemory, "vkMapMemory");
			bindFunc(cast(void**)&vkMergePipelineCaches, "vkMergePipelineCaches");
			bindFunc(cast(void**)&vkQueueBindSparse, "vkQueueBindSparse");
			bindFunc(cast(void**)&vkQueuePresentKHR, "vkQueuePresentKHR");
			bindFunc(cast(void**)&vkQueueSubmit, "vkQueueSubmit");
			bindFunc(cast(void**)&vkQueueWaitIdle, "vkQueueWaitIdle");
			bindFunc(cast(void**)&vkResetCommandBuffer, "vkResetCommandBuffer");
			bindFunc(cast(void**)&vkResetCommandPool, "vkResetCommandPool");
			bindFunc(cast(void**)&vkResetDescriptorPool, "vkResetDescriptorPool");
			bindFunc(cast(void**)&vkResetEvent, "vkResetEvent");
			bindFunc(cast(void**)&vkResetFences, "vkResetFences");
			bindFunc(cast(void**)&vkSetEvent, "vkSetEvent");
			bindFunc(cast(void**)&vkUnmapMemory, "vkUnmapMemory");
			bindFunc(cast(void**)&vkUpdateDescriptorSets, "vkUpdateDescriptorSets");
			bindFunc(cast(void**)&vkWaitForFences, "vkWaitForFences");

			bindFunctions!((void** ptr, string funcName) => bindFunc(ptr, funcName));
		}
	}
	public {
		this() {
			super(libNames);
		}
	}
}

__gshared DerelictVulkanLoader DerelictVulkan;

shared static this() {
	DerelictVulkan = new DerelictVulkanLoader();
}

shared static ~this() {
	DerelictVulkan.unload();
}
