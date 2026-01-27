# 【Agentic AI for Data 系列】开发新范式：AI 驱动的数据革命（先导篇）

# 引言

长期以来，业界专注于 Data for AI，即为人工智能提供高质量数据。正如吴恩达教授的 Data-Centric AI 理念所指出的，AI 系统 80% 的工作量集中在数据准备与迭代上。然而，一场更深刻的变革正在发生：我们正从 Data for AI 迈向 **AI for Data** 的新纪元。这不再是简单的 AI 辅助，而是将 **AI 作为原生能力**深度融入数据开发全生命周期。

正如 Gartner 将 **Agentic AI** 列为年度十大战略性技术趋势[1]，并预测到 2028 年，15% 的日常工作决策将由 Agentic AI 自主完成，这标志着软件应用本质的重新定义。

**Agentic AI 驱动的数据开发**正是这一场范式革命的践行。它将 Agentic AI 的认知、推理和自动化能力深度融入数据开发全生命周期，从需求分析、架构设计、代码生成到性能优化，实现开发效率和质量的双重提升[2]。

# 开发新范式：从传统开发到 Agentic AI 协同

让我们通过一个真实的技术选型场景：电商数据分析，来理解这种新范式的工作方式。

## **业务场景**

某零售电商平台需要对上亿条用户行为数据（浏览、收藏、加购、下单）进行分析以优化营销策略。面临着多种技术选型方案，假设其中可能有两种方案：一是使用经典的 Spark，利用其强大的分布式处理能力；或者选择 DuckDB，因为其是单机高性能分析场景下的新星，我们如何做出最适合的选择？

## **传统数据开发模式**

面对这样的技术选型挑战，传统流程通常是：

1. 数据工程师手工搜索大量 Spark 和 DuckDB 的文档，了解各自的技术特点和适用场景
2. 分别搭建测试环境，编写用户行为分析的测试代码
3. 手动准备测试数据，配置不同的存储格式和运行环境
4. 逐一执行性能测试，手工收集执行时间、资源消耗、成本等指标
5. 基于有限的测试结果和个人经验判断哪种技术更适合当前场景
6. 整个过程可能需要数周时间，且容易受主观因素和环境差异影响
7. ...

## **Agentic AI 驱动的开发新范式**

同样的技术选型场景，在 Agentic AI 模式下变成了人机协同的智能化流程：

1. **自然语言需求表达**："帮我分析电商用户行为数据的漏斗场景，评估 Spark 和 DuckDB 各自的适用性"
2. **AI 自主分析规划**：Agentic AI 助手理解业务需求，自动分析场景特点（数据量、查询复杂度、并发需求等），制定针对性的测试策略
3. **智能代码生成**：Agentic AI 助手生成完整的测试代码，包括数据准备、环境配置、指标收集，确保公平对比
4. **自动化执行监控**：Agentic AI 助手协调测试执行，监控性能指标，自发诊断和解决问题
5. **智能场景匹配**：基于量化数据和场景特征，Agentic AI 助手分析产出综合性分析报告

这种新范式的核心在于 **AI 不再是被动的工具，而是主动的协作伙伴**。它能够理解抽象需求，自主制定技术实现路径，并在整个过程中持续学习和优化。通过利用 AI 的方式，将技术选型周期从几周的时间，压缩到了三天时间，极大地节省了工作量。

## **Agentic AI 数据开发的三大核心能力**

通过上面这个电商营销分析的实际例子，我们归纳了 Agentic AI 数据开发的三大核心能力。

- **自主决策架构**：AI 不再是被动响应的工具，而是主动参与需求分析、架构设计、代码生成和问题诊断的智能系统。在电商营销分析例子中，AI 能够**自主理解**"用户行为漏斗分析"这一业务需求，**客观分析** Spark 和 DuckDB 各自的技术特点和适用场景，编写执行代码，并在执行过程中**动态调整**以确保得到公平的结果。
- **自然语言交互**：将人机交互从复杂的 UI 点击和代码编写，转变为流畅直观的自然语言对话。人类只需要专注于清晰地表达业务需求，无需学习复杂的技术语法或操作界面，让技术门槛不再成为数据洞察的障碍。
- **端到端智能流程**：告别传统割裂的复杂管道，转向基于大模型的统一、端到端智能处理流程。从业务需求理解到代码生成，从环境配置到性能测试执行，从结果分析到场景匹配建议，整个流程由 AI 统一协调。通过 Agentic Loop 机制，AI 系统能够自主感知环境变化、重新规划测试路径、执行修复任务并持续学习优化。

# 从理论到实践：如何选择合适的 Agentic AI 工具/助手

理解了 Agentic AI 数据开发的核心能力后，一个自然的问题是：如何将这些能力转化为实际的生产力？答案在于选择合适的 Agentic AI 工具和平台。

不同的工具在三大核心能力上有着不同的实现方式和强项：

- **自主决策架构**：需要强大的推理和规划能力，这依赖于底层的大模型和 Agent 框架
- **自然语言交互**：需要优秀的对话界面和上下文理解能力
- **端到端智能流程**：需要代码生成、审查和监控的完整工具链；需要工具间的无缝集成和工作流编排能力。

基于这些需求，让我们来看看 AWS 当前的生产级 Agentic AI 工具生态，以及如何根据不同的使用场景做出选择。

## 生产级 Agentic AI 工具生态与选择指南

AWS AI Stack 为构建生产级 Agentic AI 系统提供了完整的技术栈，从基础设施到应用层全面覆盖：

![](./DdbxbtLbboIBlHx5I2zctxUEnlb.png)

_AWS AI Stack：构建和部署生产级 Agentic AI 系统的综合基础架构_[3]

### 应用层（Applications）

**Kiro** 是专业的 AI 开发助手，提供集成开发环境，专门针对工程开发场景进行了优化。**Amazon Q** 作为企业级 AI 助手，与 AWS 服务深度集成，支持代码生成、架构建议和运维自动化等丰富功能。此外还有 **AWS Transform/Connect** 等企业级服务中内置的 Agentic AI 能力，以及 **AWS Marketplace** 中经过认证的第三方 Agentic AI 应用生态。

### 开发层（AI & Agent Development Software & Services）

**Strands Agents****[4]**是 AWS 开源的模型驱动 AI Agent SDK，采用简化的开发方式，只需定义提示词、工具和模型即可构建 Agent。支持多模型提供商（Amazon Bedrock、OpenAI、Anthropic 等），原生集成 MCP 协议和 Agent 间协作 A2A，已被 Amazon Q Developer、AWS Glue 等多个 AWS 服务在生产环境中使用[4]。

### 平台层（Amazon Bedrock）

Amazon Bedrock 提供完整的 Agentic AI 平台能力，包括 Amazon Nova 和多种三方模型支持。**Bedrock AgentCore[5]**是一套全面的企业级服务套件，让开发者能够快速、安全地大规模部署和运行 AI 智能体，支持任意框架和模型，可托管在 Amazon Bedrock 或其他平台上。它提供无服务器运行时、会话隔离、API 工具转换、上下文感知记忆管理、细粒度权限控制和实时监控等企业级功能，同时集成企业知识库。

### 基础设施层（Infrastructure）

**Amazon SageMaker AI** 提供模型构建、训练、微调、部署、MLOps 和治理的全生命周期能力。**AI Compute** 包括 AWS Trainium 和 AWS Inferentia 专用芯片，以及 GPU 计算支持。

## 数据开发者的 Agentic AI 选型指南

根据团队规模和技术需求，我们提供三种层次的选型建议：

| 层次       | 适用场景           | 推荐方案                      | 核心特点                 |
| ---------- | ------------------ | ----------------------------- | ------------------------ |
| **入门级** | 个人项目、快速原型 | Kiro + Amazon Q               | 零配置启动、自然语言交互 |
| **进阶级** | 企业工具、定制开发 | Strands Agents + Bedrock      | 模型驱动、多模型支持     |
| **企业级** | 关键系统、严格合规 | Bedrock AgentCore + SageMaker | 生产级部署、企业治理     |

# Agentic AI 数据开发的价值创造

了解了 Agentic AI 的核心能力和工具选择后，一个关键问题是：这种新范式究竟能为企业和开发者带来什么实际价值？

让我们回到前面的电商营销分析场景，看看 Agentic AI 如何在实际项目中创造价值。

**传统方式的挑战**：某电商平台的数据团队需要 2-3 周时间来完成 Spark vs DuckDB 的技术选型。多名高级工程师分别负责文档研究、环境搭建、代码编写、测试执行和结果分析，人力成本较高。由于缺乏统一的测试标准，结果容易受个人经验和环境差异影响，决策风险较高。

**Agentic AI 驱动的转变**：使用 Agentic AI 工具后，同样的技术选型工作在 3 天内完成。AI 自动生成标准化测试代码，智能配置 AWS 环境，实时监控性能指标，并支持基于真实数据提供量化的选型建议。只需 1 名工程师配合 AI 完成，成本低廉，效率提升 80%，决策更加客观可靠。

这个对比鲜明地展示了 Agentic AI 数据开发的价值创造，具体体现在以下五个核心维度：

**价值创造的五大维度**

**效率革命**：从手工编码到 AI 生成，从小时级诊断到分钟级解决。自动化代码生成、智能环境配置、实时问题诊断，让开发效率提升 80% 以上。

**质量飞跃**：从事后修复到主动预防，从经验驱动到数据驱动。AI 自动应用最佳实践，智能代码审查，确保生产级质量标准。

**成本优化**：从人力密集到智能协同，从资源浪费到精准配置。人力成本降低 80%，云资源使用更高效，ROI 清晰可量化。

**创新加速**：从技术门槛到自然语言，从周级开发到天级交付。业务人员直接参与数据开发，想法验证周期大幅缩短。

**协同增效**：从各自为政到深度融合，从知识孤岛到智能沉淀。统一工作流实现经验自动积累和复用，团队协作更加顺畅。

这五大维度的价值创造，共同构成了 Agentic AI 数据开发的核心竞争力。它们不是孤立存在的，而是相互促进、形成正向循环的有机整体。

# 总结：迈向 AI 原生的数据开发新时代

这篇文章探讨了 Agentic AI 驱动的开发新范式，从传统开发模式转向 AI 代理模式的演变，介绍了核心理念、实践方法、工具生态和架构分层(应用、开发、平台和基础设施层)，并提供了选型指南和价值创造分析，旨在引导开发者迈向 AI 原生的数据开发新时代。Agentic AI 驱动的数据开发代表着从 Data for AI 到 AI for Data 的根本性转变。通过三大核心能力（自主决策架构、自然语言交互、端到端智能流程），它重新定义了数据开发的工作方式，让 AI 成为真正的协作伙伴而非被动工具。

从工具选择到价值创造，从理论框架到实践应用，这种新范式正在推动企业数据能力实现跨越式提升。无论是效率革命、质量飞跃，还是成本优化、创新加速，Agentic AI 都在为数据开发带来前所未有的可能性。

想要真正体验 Agentic AI 数据开发的威力？

在另一篇文章中，我将以电商营销大数据分析的案例为例，深入展示如何使用 AWS 提供的开箱即用的 Agentic AI 编程工具来解决用户行为分析的技术选型问题。这不仅是一次技术选型实践，更是展示 Agentic AI 如何帮助我们做出更客观、更科学的技术决策的完整演示。

# 系列文章导航

- **第 1 篇**：【Agentic AI for Data 系列】开发新范式：AI 驱动的数据革命（先导篇）
- **第 2 篇**：【Agentic AI for Data 系列】Kiro 实战：DuckDB vs Spark 技术选型全流程

## 参考资料

[1] Gartner 2025 年十大战略性技术趋势 ：[https://www.gartner.com/cn/newsroom/press-releases/2025-top-strategic-tech-trends](https://www.gartner.com/cn/newsroom/press-releases/2025-top-strategic-tech-trends)

[2] 亚马逊云科技中国区构建 Agentic AI 应用实践指南：[https://aws.amazon.com/cn/blogs/china/practical-guide-to-building-agentic-ai-applications-for-aws-china-region/](https://aws.amazon.com/cn/blogs/china/practical-guide-to-building-agentic-ai-applications-for-aws-china-region/)

[3] AWS 生产级 AI Agent 规模化部署指南：[https://aws.amazon.com/blogs/machine-learning/enabling-customers-to-deliver-production-ready-ai-agents-at-scale/](https://aws.amazon.com/blogs/machine-learning/enabling-customers-to-deliver-production-ready-ai-agents-at-scale/)

[4] Strands Agents 开源 AI 代理 SDK 介绍：[https://aws.amazon.com/blogs/opensource/introducing-strands-agents-an-open-source-ai-agents-sdk](https://aws.amazon.com/blogs/opensource/introducing-strands-agents-an-open-source-ai-agents-sdk)

[5] Introducing Amazon Bedrock AgentCore: Securely deploy and operate AI agents at any scale (preview)：[https://aws.amazon.com/blogs/aws/introducing-amazon-bedrock-agentcore-securely-deploy-and-operate-ai-agents-at-any-scale/](https://aws.amazon.com/blogs/aws/introducing-amazon-bedrock-agentcore-securely-deploy-and-operate-ai-agents-at-any-scale/)
